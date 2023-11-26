@extends('layouts.admin')

@section('title','Danh sách đơn hàng')

@section('content')
<div id="content" class="container-fluid">
    <div class="card">
        <div class="card-header font-weight-bold d-flex justify-content-between align-items-center">
            <h5 class="m-0 ">Danh sách đơn hàng</h5>
            <div class="form-search form-inline">
                <form method="GET">
                    <input type="text" name="keyword" class="form-control form-search" placeholder="Tìm kiếm" value="{{ $keyword }}">
                    <input type="submit" name="btn-search" value="Search" class="btn btn-primary">
                </form>
            </div>
        </div>
        @if (!empty(session('status')))
        <div class="alert alert-success">{{ Session('status') }}</div>
        @endif
        <div class="card-body">
            <div class="analytic">
                <a href="{{ request()->fullUrlWithQuery(['status'=>'pending']) }}" class="text-primary">Chờ chuyển khoản<span class="text-muted">({{ $count_pending }})</span></a>
                <a href="{{ request()->fullUrlWithQuery(['status'=>'processing']) }}" class="text-primary">Đang xử lý<span class="text-muted">({{ $count_processing }})</span></a>
                <a href="{{ request()->fullUrlWithQuery(['status'=>'shipped']) }}" class="text-primary">Đang vận chuyển<span class="text-muted">({{ $count_shipped }})</span></a>
                <a href="{{ request()->fullUrlWithQuery(['status'=>'delivered']) }}" class="text-primary">Hoàn tất<span class="text-muted">({{ $count_delivered }})</span></a>
                <a href="{{ request()->fullUrlWithQuery(['status'=>'canceled']) }}" class="text-primary">Đơn hàng hủy<span class="text-muted">({{ $count_canceled }})</span></a>
            </div>
            <div class="form-action form-inline py-3">
                <form action="{{ route('order.action') }}" method="GET">
                <select class="form-control mr-1" id="actions" name="actions">
                    <option value="" selected>Tác vụ chuyển trạng thái</option>
                    @if($status == 'pending' or $status == '')
                    <option value="processing">Đang xử lý</option>
                    <option value="shipped">Đang vận chuyển</option>
                    <option value="delivered">Hoàn tất</option>
                    <option value="canceled">Đơn hàng hủy</option>
                    @elseif($status == 'processing')
                    <option value="pending">Chờ chuyển khoản</option>
                    <option value="shipped">Đang vận chuyển</option>
                    <option value="delivered">Hoàn tất</option>
                    <option value="canceled">Đơn hàng hủy</option>
                    @elseif($status == 'shipped')
                    <option value="processing">Đang xử lý</option>
                    <option value="pending">Chờ chuyển khoản</option>
                    <option value="delivered">Hoàn tất</option>
                    <option value="canceled">Đơn hàng hủy</option>
                    @elseif($status == 'delivered')
                    <option value="processing">Đang xử lý</option>
                    <option value="shipped">Đang vận chuyển</option>
                    <option value="pending">Chờ chuyển khoản</option>
                    <option value="canceled">Đơn hàng hủy</option>
                    @elseif($status == 'canceled')
                    <option value="processing">Đang xử lý</option>
                    <option value="shipped">Đang vận chuyển</option>
                    <option value="delivered">Hoàn tất</option>
                    <option value="pending">Chờ chuyển khoản</option>
                    @endif
                </select>
                <input type="submit" name="btn-search" value="Áp dụng" class="btn btn-primary" onclick="return confirm('Bạn chắc chắn muốn thực hiện hành động này ?')">
            </div>
            <table class="table table-striped table-checkall">
                <thead>
                    <tr>
                        <th>
                            <input type="checkbox" name="checkall">
                        </th>
                        <th scope="col">#</th>
                        <th scope="col">Mã</th>
                        <th scope="col">Khách hàng</th>
                        <th scope="col">Sản phẩm</th>
                        <th scope="col">Số lượng</th>
                        <th scope="col">Giá trị</th>
                        <th scope="col">Cách thanh toán</th>
                        <th scope="col">Trạng thái</th>
                        <th scope="col">Thời gian</th>
                        <th scope="col">Tác vụ</th>
                    </tr>
                </thead>
                <tbody>
                    @if($orders->total() > 0)
                    @foreach ($orders as $order)
                    <tr>
                        <td>
                            <input type="checkbox" name="list_check[]" value="{{ $order->id }}">
                        </td>
                        <td>{{ $loop->iteration }}</td>
                        <td>#{{ $order->id }}</td>
                        <td>
                            {{ $order->customers->name }} <br>
                            0{{ $order->customers->phone_number }}
                        </td>
                        <td>
                            {{--  @foreach (get_name_product_from_order_item($order->Orders_item->pluck('id')->toArray()) as $product)
                                <a href="#">{{ $product }}</a>
                            @endforeach  --}}

                        </td>
                        <td>{{ $order->product_quantity }}</td>
                        <td>
                            {{ number_format($order->total_amount, 0, '', '.') }}đ
                        </td>
                        <td class="text-center">@if($order->payment_method == 'momo')
                            <img src="{{ asset('img/momo.jpg') }}" style="width: 40px; height: 30px;" title="Thanh toán qua MoMo">
                        @elseif($order->payment_method == 'bank')
                            <img src="{{ asset('img/bank.png') }}" style="width: 40px; height: 30px;" title="Thanh toán qua thẻ ngân hàng">
                        @endif
                        </td>
                        <td>@if($order->status == 'pending')
                            <span class="badge badge-danger">Chờ chuyển khoản</span>
                        @elseif($order->status == 'processing')
                            <span class="badge badge-warning">Đang xử lý</span>
                        @elseif($order->status == 'shipped')
                            <span class="badge badge-primary">Đang vận chuyển</span>
                        @elseif($order->status == 'delivered')
                            <span class="badge badge-success">Hoàn tất</span>
                        @elseif($order->status == 'canceled')
                            <span class="badge badge-secondary">Đơn hủy</span>
                        @endif
                        </td>
                        <td>{{ $order->created_at }}</td>
                        <td>
                            <a href="{{ route('order.edit', $order->id) }}" class="btn btn-success btn-sm rounded-0 text-white" onclick="return confirm('Bạn chắc chắn muốn chỉnh sửa đơn hàng này ?')" type="button" data-toggle="tooltip" data-placement="top" title="Edit"><i class="fa fa-edit"></i></a>
                            <a href="{{ route('order.delete', $order->id) }}" class="btn btn-danger btn-sm rounded-0 text-white" onclick="return confirm('Bạn chắc chắn muốn xóa đơn hàng này ?')" type="button" data-toggle="tooltip" data-placement="top" title="Delete"><i class="fa fa-trash"></i></a>
                        </td>
                    </tr>
                    @endforeach
                    @else
                    <tr>
                        <td colspan="11" style="text-align: center">Không tìm thấy bản ghi nào!</td>
                    </tr>
                    @endif
                </tbody>
            </table>
        </form>
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                    {{--  <li class="page-item">
                        <a class="page-link" href="#" aria-label="Previous">
                            <span aria-hidden="true">Trước</span>
                            <span class="sr-only">Sau</span>
                        </a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                            <span class="sr-only">Next</span>
                        </a>
                    </li>  --}}
                    {{ $orders->links() }}
                </ul>
            </nav>
        </div>
    </div>
</div>
@endsection

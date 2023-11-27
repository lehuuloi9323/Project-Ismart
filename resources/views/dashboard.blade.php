@extends('layouts.admin')
@section('title','Dashboard')
@section('content')
<div class="container-fluid py-5">
    <div class="row">
        <div class="col">
            <div class="card text-white bg-primary mb-3" style="max-width: 18rem;">
                <div class="card-header">ĐƠN HÀNG THÀNH CÔNG</div>
                <div class="card-body">
                    <h5 class="card-title">{{ number_format($count_delivered, 0, '', '.') }}</h5>
                    <p class="card-text">Đơn hàng giao dịch thành công</p>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card text-white bg-danger mb-3" style="max-width: 18rem;">
                <div class="card-header">ĐANG XỬ LÝ</div>
                <div class="card-body">
                    <h5 class="card-title">{{ number_format($count_pending, 0, '', '.') }}</h5>
                    <p class="card-text">Số lượng đơn hàng đang xử lý</p>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card text-white bg-success mb-3" style="max-width: 18rem;">
                <div class="card-header">DOANH SỐ</div>
                <div class="card-body">
                    <h5 class="card-title">{{ number_format($revenue, 0, '', '.') }}đ</h5>
                    <p class="card-text">Doanh số hệ thống</p>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card text-white bg-dark mb-3" style="max-width: 18rem;">
                <div class="card-header">ĐƠN HÀNG HỦY</div>
                <div class="card-body">
                    <h5 class="card-title">{{ number_format($count_canceled, 0, '', '.') }}</h5>
                    <p class="card-text">Số đơn bị hủy trong hệ thống</p>
                </div>
            </div>
        </div>
    </div>
    <!-- end analytic  -->
    <div class="card">
        <div class="card-header font-weight-bold">
            ĐƠN HÀNG MỚI
        </div>
        <div class="card-body">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Mã</th>
                        <th scope="col">Khách hàng</th>
                        <th scope="col">Chi tiết</th>

                        <th scope="col">Số lượng</th>
                        <th scope="col">Giá trị</th>
                        <th scope="col">Trạng thái</th>
                        <th scope="col">Thời gian</th>
                        <th scope="col">Tác vụ</th>
                    </tr>
                </thead>
                <tbody>
                    @if($orders->total() > 0)
                    @foreach ($orders as $order)
                    <tr>
                        <th scope="row">{{ $loop->iteration }}</th>
                        <td>#{{ $order->id }}</td>
                        <td>
                            {{ $order->customers->name }} <br>
                            0{{ $order->customers->phone_number }}
                        </td>
                        <td><a href="{{ route('order.detail', $order->id) }}" title="Chi tiết đơn hàng">Chi tiết</a></td>

                        <td>{{ $order->product_quantity }}</td>
                        <td>
                            {{ number_format($order->total_amount, 0, '', '.') }}đ
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
                            <td colspan="9" style="text-align: center">Hiện không có đơn hàng mới nào/td>
                        </tr>
                    @endif
                </tbody>
            </table>
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

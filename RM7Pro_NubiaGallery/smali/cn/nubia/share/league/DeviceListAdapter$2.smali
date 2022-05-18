.class Lcn/nubia/share/league/DeviceListAdapter$2;
.super Ljava/lang/Object;
.source "DeviceListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/share/league/DeviceListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/share/league/DeviceListAdapter;

.field final synthetic val$holder:Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;


# direct methods
.method constructor <init>(Lcn/nubia/share/league/DeviceListAdapter;Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcn/nubia/share/league/DeviceListAdapter$2;->this$0:Lcn/nubia/share/league/DeviceListAdapter;

    iput-object p2, p0, Lcn/nubia/share/league/DeviceListAdapter$2;->val$holder:Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 71
    iget-object p1, p0, Lcn/nubia/share/league/DeviceListAdapter$2;->val$holder:Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;

    invoke-virtual {p1}, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;->getLayoutPosition()I

    move-result p1

    .line 72
    iget-object v0, p0, Lcn/nubia/share/league/DeviceListAdapter$2;->val$holder:Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;

    invoke-virtual {v0}, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;->getAdapterPosition()I

    move-result v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateViewHolder, mDeviceIcon, onClick, layoutPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", adapterPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NS-DeviceListAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_2

    .line 75
    iget-object v1, p0, Lcn/nubia/share/league/DeviceListAdapter$2;->this$0:Lcn/nubia/share/league/DeviceListAdapter;

    invoke-static {v1}, Lcn/nubia/share/league/DeviceListAdapter;->access$000(Lcn/nubia/share/league/DeviceListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    iget-object v1, p0, Lcn/nubia/share/league/DeviceListAdapter$2;->this$0:Lcn/nubia/share/league/DeviceListAdapter;

    invoke-static {v1}, Lcn/nubia/share/league/DeviceListAdapter;->access$000(Lcn/nubia/share/league/DeviceListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/leagueshare/NBShareDevice;

    if-nez v1, :cond_1

    const-string p1, "onCreateViewHolder, mDeviceIcon, onClick, device is null !"

    .line 81
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :cond_1
    iget-object v3, p0, Lcn/nubia/share/league/DeviceListAdapter$2;->this$0:Lcn/nubia/share/league/DeviceListAdapter;

    invoke-static {v3}, Lcn/nubia/share/league/DeviceListAdapter;->access$100(Lcn/nubia/share/league/DeviceListAdapter;)Lcn/nubia/share/league/DeviceListAdapter$OnItemClickListener;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/share/league/DeviceListAdapter$2;->val$holder:Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;

    iget-object v4, v4, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;->mDeviceIcon:Landroid/widget/ImageView;

    invoke-interface {v3, v4, v1, p1, v0}, Lcn/nubia/share/league/DeviceListAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;Lcn/nubia/leagueshare/NBShareDevice;II)V

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreateViewHolder, mDeviceIcon, onClick, click : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lcn/nubia/leagueshare/NBShareDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p1, "onCreateViewHolder, mDeviceIcon, onClick, adapterPosition is out of range !"

    .line 76
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

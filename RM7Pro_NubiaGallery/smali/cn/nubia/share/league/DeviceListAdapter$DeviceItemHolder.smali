.class Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DeviceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/share/league/DeviceListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeviceItemHolder"
.end annotation


# instance fields
.field mDeviceIcon:Landroid/widget/ImageView;

.field mDeviceName:Landroid/widget/TextView;

.field mDeviceStatus:Landroid/widget/TextView;

.field mSendProgressBar:Lcn/nubia/share/league/CircleProgressBar;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 161
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0900c5

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;->mDeviceIcon:Landroid/widget/ImageView;

    const v0, 0x7f0900c6

    .line 163
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;->mDeviceName:Landroid/widget/TextView;

    const v0, 0x7f0900c8

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;->mDeviceStatus:Landroid/widget/TextView;

    const v0, 0x7f0900c7

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/share/league/CircleProgressBar;

    iput-object p1, p0, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;->mSendProgressBar:Lcn/nubia/share/league/CircleProgressBar;

    return-void
.end method

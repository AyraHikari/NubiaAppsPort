.class public Lcn/nubia/share/league/DeviceListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DeviceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/share/league/DeviceListAdapter$OnItemClickListener;,
        Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NS-DeviceListAdapter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/leagueshare/NBShareDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnItemClickListener:Lcn/nubia/share/league/DeviceListAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/share/league/DeviceListAdapter$OnItemClickListener;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/share/league/DeviceListAdapter;->mDeviceList:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcn/nubia/share/league/DeviceListAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcn/nubia/share/league/DeviceListAdapter;->mOnItemClickListener:Lcn/nubia/share/league/DeviceListAdapter$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/share/league/DeviceListAdapter;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/share/league/DeviceListAdapter;->mDeviceList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/share/league/DeviceListAdapter;)Lcn/nubia/share/league/DeviceListAdapter$OnItemClickListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcn/nubia/share/league/DeviceListAdapter;->mOnItemClickListener:Lcn/nubia/share/league/DeviceListAdapter$OnItemClickListener;

    return-object p0
.end method

.method private getIconByDeviceType(I)I
    .locals 3

    const v0, 0x7f080101

    packed-switch p1, :pswitch_data_0

    .line 237
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIconByDeviceType, not supported ! deviceType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NS-DeviceListAdapter"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0800e5

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0800f9

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0800fb

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0800e7

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0800f1

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0800eb

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0800e9

    goto :goto_0

    :pswitch_8
    const v0, 0x7f0800ef

    goto :goto_0

    :pswitch_9
    const v0, 0x7f0800f7

    goto :goto_0

    :pswitch_a
    const v0, 0x7f0800ed

    goto :goto_0

    :pswitch_b
    const v0, 0x7f0800f3

    goto :goto_0

    :pswitch_c
    const v0, 0x7f0800ff

    :goto_0
    :pswitch_d
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getStrByDeviceStatus(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const p1, 0x7f10012f

    goto :goto_0

    :pswitch_1
    const p1, 0x7f100129

    goto :goto_0

    :pswitch_2
    const p1, 0x7f10012b

    goto :goto_0

    :pswitch_3
    const p1, 0x7f10012e

    goto :goto_0

    :pswitch_4
    const p1, 0x7f10012d

    goto :goto_0

    :pswitch_5
    const p1, 0x7f10012c

    goto :goto_0

    :pswitch_6
    const p1, 0x7f10012a

    goto :goto_0

    :pswitch_7
    const p1, 0x7f100130

    :goto_0
    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 279
    :cond_0
    iget-object v0, p0, Lcn/nubia/share/league/DeviceListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public copyLocalDeviceList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/leagueshare/NBShareDevice;",
            ">;)V"
        }
    .end annotation

    .line 284
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string p1, "NS-DeviceListAdapter"

    const-string v0, "copyLocalDeviceList, can only be run on main thread !"

    .line 285
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 288
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 289
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 291
    :cond_1
    iget-object v0, p0, Lcn/nubia/share/league/DeviceListAdapter;->mDeviceList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 145
    iget-object v0, p0, Lcn/nubia/share/league/DeviceListAdapter;->mDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isDeviceInSendingStatus()Z
    .locals 7

    .line 316
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "NS-DeviceListAdapter"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const-string v0, "isDeviceInSendingStatus, can only be run on main thread !"

    .line 317
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 321
    :cond_0
    iget-object v0, p0, Lcn/nubia/share/league/DeviceListAdapter;->mDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_2

    .line 323
    iget-object v4, p0, Lcn/nubia/share/league/DeviceListAdapter;->mDeviceList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/leagueshare/NBShareDevice;

    .line 324
    invoke-virtual {v4}, Lcn/nubia/leagueshare/NBShareDevice;->getSendStatus()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDeviceInSendingStatus sending, device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Lcn/nubia/share/league/LeagueShare;->deviceToStr(Lcn/nubia/leagueshare/NBShareDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public isDeviceInWaiingAndConnectingStatus()Z
    .locals 8

    .line 296
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "NS-DeviceListAdapter"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const-string v0, "isDeviceInSendingStatus, can only be run on main thread !"

    .line 297
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 301
    :cond_0
    iget-object v0, p0, Lcn/nubia/share/league/DeviceListAdapter;->mDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_3

    .line 303
    iget-object v4, p0, Lcn/nubia/share/league/DeviceListAdapter;->mDeviceList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/leagueshare/NBShareDevice;

    .line 304
    invoke-virtual {v4}, Lcn/nubia/leagueshare/NBShareDevice;->getSendStatus()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDeviceInStatus, waiting or connecting, device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Lcn/nubia/share/league/LeagueShare;->deviceToStr(Lcn/nubia/leagueshare/NBShareDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    return v3
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 26
    check-cast p1, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/share/league/DeviceListAdapter;->onBindViewHolder(Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 26
    check-cast p1, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/share/league/DeviceListAdapter;->onBindViewHolder(Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;I)V
    .locals 5

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder in, position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NS-DeviceListAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcn/nubia/share/league/DeviceListAdapter;->mDeviceList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/leagueshare/NBShareDevice;

    const/4 v0, 0x0

    const v2, 0x7f100128

    if-eqz p2, :cond_1

    .line 98
    iget-object v3, p1, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;->mDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcn/nubia/leagueshare/NBShareDevice;->getDeviceType()I

    move-result v4

    invoke-direct {p0, v4}, Lcn/nubia/share/league/DeviceListAdapter;->getIconByDeviceType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    invoke-virtual {p2}, Lcn/nubia/leagueshare/NBShareDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    iget-object v3, p1, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;->mDeviceName:Landroid/widget/TextView;

    iget-object v4, p0, Lcn/nubia/share/league/DeviceListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v2, p1, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/nubia/leagueshare/NBShareDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_0
    iget-object v2, p1, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;->mDeviceStatus:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/nubia/leagueshare/NBShareDevice;->getSendStatus()I

    move-result v3

    invoke-direct {p0, v3}, Lcn/nubia/share/league/DeviceListAdapter;->getStrByDeviceStatus(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v2, p1, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;->mSendProgressBar:Lcn/nubia/share/league/CircleProgressBar;

    invoke-virtual {v2, v0}, Lcn/nubia/share/league/CircleProgressBar;->setProgress(I)V

    .line 106
    iget-object v0, p1, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 107
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBindViewHolder out, itemView.getTag="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p1, p1, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 109
    :cond_1
    iget-object p2, p1, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;->mDeviceIcon:Landroid/widget/ImageView;

    const v3, 0x7f080101

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    iget-object p2, p1, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;->mDeviceName:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/nubia/share/league/DeviceListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object p2, p1, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;->mDeviceStatus:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/share/league/DeviceListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f100130

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object p1, p1, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;->mSendProgressBar:Lcn/nubia/share/league/CircleProgressBar;

    invoke-virtual {p1, v0}, Lcn/nubia/share/league/CircleProgressBar;->setProgress(I)V

    const-string p1, "onBindViewHolder out, device is null ! bind default device"

    .line 113
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder in, with payloads, position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payloads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NS-DeviceListAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0, p1, p2}, Lcn/nubia/share/league/DeviceListAdapter;->onBindViewHolder(Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;I)V

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 125
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 126
    instance-of v0, p3, Lcn/nubia/leagueshare/NBShareDevice;

    if-nez v0, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    check-cast p3, Lcn/nubia/leagueshare/NBShareDevice;

    .line 132
    iget-object v0, p1, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 133
    invoke-virtual {p3, v0}, Lcn/nubia/leagueshare/NBShareDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onBindViewHolder, not equal ! device="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p3}, Lcn/nubia/share/league/LeagueShare;->deviceToStr(Lcn/nubia/leagueshare/NBShareDevice;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", obj="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 138
    :cond_2
    iget-object v0, p1, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;->mSendProgressBar:Lcn/nubia/share/league/CircleProgressBar;

    invoke-virtual {v0, p2}, Lcn/nubia/share/league/CircleProgressBar;->setVisibility(I)V

    .line 139
    iget-object p2, p1, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;->mSendProgressBar:Lcn/nubia/share/league/CircleProgressBar;

    invoke-virtual {p3}, Lcn/nubia/leagueshare/NBShareDevice;->getSendProgress()I

    move-result v0

    invoke-virtual {p2, v0}, Lcn/nubia/share/league/CircleProgressBar;->setProgress(I)V

    .line 140
    iget-object p1, p1, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;->mDeviceStatus:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcn/nubia/leagueshare/NBShareDevice;->getSendStatus()I

    move-result p2

    invoke-direct {p0, p2}, Lcn/nubia/share/league/DeviceListAdapter;->getStrByDeviceStatus(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "onBindViewHolder, payloadObject is null or not ZTE Share Device !"

    .line 127
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcn/nubia/share/league/DeviceListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;
    .locals 2

    .line 46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0021

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 47
    new-instance p2, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;

    invoke-direct {p2, p1}, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;-><init>(Landroid/view/View;)V

    .line 48
    iget-object p1, p2, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcn/nubia/share/league/DeviceListAdapter$1;

    invoke-direct {v0, p0, p2}, Lcn/nubia/share/league/DeviceListAdapter$1;-><init>(Lcn/nubia/share/league/DeviceListAdapter;Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object p1, p2, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;->mDeviceIcon:Landroid/widget/ImageView;

    new-instance v0, Lcn/nubia/share/league/DeviceListAdapter$2;

    invoke-direct {v0, p0, p2}, Lcn/nubia/share/league/DeviceListAdapter$2;-><init>(Lcn/nubia/share/league/DeviceListAdapter;Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreateViewHolder out, holder="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NS-DeviceListAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 26
    check-cast p1, Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;

    invoke-virtual {p0, p1}, Lcn/nubia/share/league/DeviceListAdapter;->onViewRecycled(Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcn/nubia/share/league/DeviceListAdapter$DeviceItemHolder;)V
    .locals 2

    .line 150
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewRecycled out, holder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NS-DeviceListAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSendStatusByDevice(Lcn/nubia/leagueshare/NBShareDevice;)V
    .locals 4

    const-string v0, "NS-DeviceListAdapter"

    if-nez p1, :cond_0

    const-string p1, "setSendStatusByDevice, input device is null !"

    .line 175
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 178
    :cond_0
    iget-object v1, p0, Lcn/nubia/share/league/DeviceListAdapter;->mDeviceList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSendStatusByDevice, device not found ! device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcn/nubia/share/league/LeagueShare;->deviceToStr(Lcn/nubia/leagueshare/NBShareDevice;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 183
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcn/nubia/share/league/DeviceListAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSendStatusByDevice out , position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcn/nubia/share/league/LeagueShare;->deviceToStr(Lcn/nubia/leagueshare/NBShareDevice;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateLocalDeviceList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/leagueshare/NBShareDevice;",
            ">;)V"
        }
    .end annotation

    .line 335
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string p1, "NS-DeviceListAdapter"

    const-string v0, "updateLocalDeviceList, can only be run on main thread !"

    .line 336
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcn/nubia/share/league/DeviceListAdapter;->mDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 341
    iget-object v0, p0, Lcn/nubia/share/league/DeviceListAdapter;->mDeviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 342
    invoke-virtual {p0}, Lcn/nubia/share/league/DeviceListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.class public Lcn/nubia/touping/Adapter/DialogListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "DialogListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/Adapter/DialogListViewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DialogListViewAdapter"


# instance fields
.field private browseInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private miracastBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->browseInfoList:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->miracastBeanList:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->dataList:Ljava/util/ArrayList;

    .line 49
    iput-object p1, p0, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->context:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private reSerDataList()V
    .locals 4

    .prologue
    .line 37
    iget-object v1, p0, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 38
    const-string v1, "DialogListViewAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DialogListViewAdapter browseInfoList.SIZE() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->browseInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->browseInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 40
    iget-object v1, p0, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->dataList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->browseInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    const-string v1, "DialogListViewAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DialogListViewAdapter miracastBeanList.SIZE() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->miracastBeanList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->miracastBeanList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 44
    iget-object v1, p0, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->dataList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->miracastBeanList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 46
    :cond_1
    return-void
.end method


# virtual methods
.method public getBrowseInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->browseInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->dataList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->dataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 97
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "i"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 102
    const/4 v8, 0x0

    .line 103
    .local v8, "viewHolder":Lcn/nubia/touping/Adapter/DialogListViewAdapter$ViewHolder;
    if-nez p2, :cond_4

    .line 104
    iget-object v9, p0, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->context:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f04003f

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 105
    new-instance v8, Lcn/nubia/touping/Adapter/DialogListViewAdapter$ViewHolder;

    .end local v8    # "viewHolder":Lcn/nubia/touping/Adapter/DialogListViewAdapter$ViewHolder;
    invoke-direct {v8}, Lcn/nubia/touping/Adapter/DialogListViewAdapter$ViewHolder;-><init>()V

    .line 106
    .restart local v8    # "viewHolder":Lcn/nubia/touping/Adapter/DialogListViewAdapter$ViewHolder;
    const v9, 0x7f0e00fc

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v8, Lcn/nubia/touping/Adapter/DialogListViewAdapter$ViewHolder;->deviceName:Landroid/widget/TextView;

    .line 107
    const v9, 0x7f0e00fd

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v8, Lcn/nubia/touping/Adapter/DialogListViewAdapter$ViewHolder;->deviceLinkStatus:Landroid/widget/TextView;

    .line 108
    invoke-virtual {p2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 113
    :goto_0
    iget-object v9, p0, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 114
    .local v1, "itemObject":Ljava/lang/Object;
    instance-of v9, v1, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    if-eqz v9, :cond_2

    move-object v4, v1

    .line 115
    check-cast v4, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    .line 116
    .local v4, "mLelinkServiceInfo":Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    iget-object v9, v8, Lcn/nubia/touping/Adapter/DialogListViewAdapter$ViewHolder;->deviceName:Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v9, v8, Lcn/nubia/touping/Adapter/DialogListViewAdapter$ViewHolder;->deviceLinkStatus:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    invoke-static {}, Lcn/nubia/touping/Utils/LeBoOprate;->getMirrorPlayingStatus()Z

    move-result v9

    if-nez v9, :cond_0

    .line 120
    iget-object v9, p0, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->context:Landroid/content/Context;

    invoke-static {v9, v4}, Lcn/nubia/touping/Utils/LeBoOprate;->compareDeviceInfo(Landroid/content/Context;Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v2

    .line 121
    .local v2, "lastTimeLinkDevice":Z
    if-eqz v2, :cond_5

    .line 122
    iget-object v9, v8, Lcn/nubia/touping/Adapter/DialogListViewAdapter$ViewHolder;->deviceLinkStatus:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v9, v8, Lcn/nubia/touping/Adapter/DialogListViewAdapter$ViewHolder;->deviceLinkStatus:Landroid/widget/TextView;

    const v10, 0x7f080051

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 129
    .end local v2    # "lastTimeLinkDevice":Z
    :cond_0
    :goto_1
    iget-object v9, p0, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->context:Landroid/content/Context;

    instance-of v9, v9, Lcn/nubia/touping/AbstractActivity;

    if-eqz v9, :cond_2

    .line 130
    invoke-static {}, Lcn/nubia/touping/AbstractActivity;->getmSelectInfo()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v6

    .line 131
    .local v6, "selectDevice":Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    if-eqz v6, :cond_2

    invoke-virtual {v6, v4}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 132
    invoke-static {}, Lcn/nubia/touping/AbstractActivity;->getDeviceLinkStatus()I

    move-result v3

    .line 133
    .local v3, "linkStatus":I
    const/4 v9, 0x1

    if-eq v3, v9, :cond_1

    const/4 v9, 0x2

    if-eq v3, v9, :cond_1

    const/4 v9, 0x4

    if-ne v3, v9, :cond_2

    .line 134
    :cond_1
    iget-object v9, v8, Lcn/nubia/touping/Adapter/DialogListViewAdapter$ViewHolder;->deviceLinkStatus:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v9, v8, Lcn/nubia/touping/Adapter/DialogListViewAdapter$ViewHolder;->deviceLinkStatus:Landroid/widget/TextView;

    const v10, 0x7f080050

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 141
    .end local v3    # "linkStatus":I
    .end local v4    # "mLelinkServiceInfo":Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .end local v6    # "selectDevice":Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    :cond_2
    instance-of v9, v1, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;

    if-eqz v9, :cond_3

    move-object v5, v1

    .line 142
    check-cast v5, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;

    .line 143
    .local v5, "mWifiDisplayMiracastBean":Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;
    iget-object v9, v8, Lcn/nubia/touping/Adapter/DialogListViewAdapter$ViewHolder;->deviceName:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->getmDeviceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v9, v8, Lcn/nubia/touping/Adapter/DialogListViewAdapter$ViewHolder;->deviceLinkStatus:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    const/4 v7, 0x0

    .line 148
    .local v7, "statusNum":I
    :try_start_0
    const-string v9, "DialogListViewAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCurrentLinkStatus get befor statusNum = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getMiracastTouPingService()Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;

    move-result-object v9

    invoke-virtual {v5}, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->getmDeviceAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcn/nubia/touping/MiracastTouPing/MiracastTouPingService;->getCurrentLinkStatus(Ljava/lang/String;)I

    move-result v7

    .line 150
    const-string v9, "DialogListViewAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCurrentLinkStatus get end statusNum = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_2
    const/4 v9, 0x1

    if-ne v7, v9, :cond_6

    .line 157
    iget-object v9, v8, Lcn/nubia/touping/Adapter/DialogListViewAdapter$ViewHolder;->deviceLinkStatus:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v9, v8, Lcn/nubia/touping/Adapter/DialogListViewAdapter$ViewHolder;->deviceLinkStatus:Landroid/widget/TextView;

    const v10, 0x7f080050

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 173
    .end local v5    # "mWifiDisplayMiracastBean":Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;
    .end local v7    # "statusNum":I
    :cond_3
    :goto_3
    return-object p2

    .line 110
    .end local v1    # "itemObject":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "viewHolder":Lcn/nubia/touping/Adapter/DialogListViewAdapter$ViewHolder;
    check-cast v8, Lcn/nubia/touping/Adapter/DialogListViewAdapter$ViewHolder;

    .restart local v8    # "viewHolder":Lcn/nubia/touping/Adapter/DialogListViewAdapter$ViewHolder;
    goto/16 :goto_0

    .line 125
    .restart local v1    # "itemObject":Ljava/lang/Object;
    .restart local v2    # "lastTimeLinkDevice":Z
    .restart local v4    # "mLelinkServiceInfo":Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    :cond_5
    iget-object v9, v8, Lcn/nubia/touping/Adapter/DialogListViewAdapter$ViewHolder;->deviceLinkStatus:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 151
    .end local v2    # "lastTimeLinkDevice":Z
    .end local v4    # "mLelinkServiceInfo":Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;
    .restart local v5    # "mWifiDisplayMiracastBean":Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;
    .restart local v7    # "statusNum":I
    :catch_0
    move-exception v0

    .line 152
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    const-string v9, "DialogListViewAdapter"

    const-string v10, "changed update getCurrentLinkStatus = EXCEPTION"

    invoke-static {v9, v10}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 159
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_6
    const/4 v9, 0x2

    if-ne v7, v9, :cond_7

    .line 160
    iget-object v9, v8, Lcn/nubia/touping/Adapter/DialogListViewAdapter$ViewHolder;->deviceLinkStatus:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object v9, v8, Lcn/nubia/touping/Adapter/DialogListViewAdapter$ViewHolder;->deviceLinkStatus:Landroid/widget/TextView;

    const v10, 0x7f080068

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 163
    :cond_7
    iget-object v9, p0, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->context:Landroid/content/Context;

    const-string v10, "lastMirracastTouPIngDeviceInfo"

    invoke-static {v9, v10}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesStringByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "lastTimeLinkDevice":Ljava/lang/String;
    if-eqz v2, :cond_8

    invoke-virtual {v5}, Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;->getmDeviceAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 165
    iget-object v9, v8, Lcn/nubia/touping/Adapter/DialogListViewAdapter$ViewHolder;->deviceLinkStatus:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    iget-object v9, v8, Lcn/nubia/touping/Adapter/DialogListViewAdapter$ViewHolder;->deviceLinkStatus:Landroid/widget/TextView;

    const v10, 0x7f080051

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 168
    :cond_8
    iget-object v9, v8, Lcn/nubia/touping/Adapter/DialogListViewAdapter$ViewHolder;->deviceLinkStatus:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public getmiracastBeanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->miracastBeanList:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized setMiracastBeanListAndUpdate(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "miracastBeanList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;>;"
    monitor-enter p0

    :try_start_0
    const-string v0, "DialogListViewAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialogListViewAdapter setMiracastBeanListAndUpdate miracastBeanList.SIZE() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcn/nubia/touping/MiracastTouPing/WifiDisplayMiracastBean;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->miracastBeanList:Ljava/util/List;

    .line 63
    iget-object v0, p0, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->miracastBeanList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->copy(Ljava/util/List;Ljava/util/List;)V

    .line 64
    invoke-direct {p0}, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->reSerDataList()V

    .line 65
    invoke-virtual {p0}, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setbrowseInfoListAndUpdate(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "browseInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;>;"
    monitor-enter p0

    :try_start_0
    const-string v0, "DialogListViewAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialogListViewAdapter setbrowseInfoListAndUpdate browseInfoList.SIZE() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->browseInfoList:Ljava/util/List;

    .line 55
    iget-object v0, p0, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->browseInfoList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->copy(Ljava/util/List;Ljava/util/List;)V

    .line 56
    invoke-direct {p0}, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->reSerDataList()V

    .line 57
    invoke-virtual {p0}, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateListView()V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0}, Lcn/nubia/touping/Adapter/DialogListViewAdapter;->notifyDataSetChanged()V

    .line 83
    return-void
.end method

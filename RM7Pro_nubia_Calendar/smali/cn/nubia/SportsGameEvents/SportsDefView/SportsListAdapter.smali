.class public Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SportsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;
    }
.end annotation


# static fields
.field private static final SAVEREMIND_MATCHID:Ljava/lang/String; = "nendremind_sportsmatchid"

.field private static final TIMEDURATION:I = 0x320

.field public static final remindBefore:I = 0xf


# instance fields
.field private context:Landroid/content/Context;

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsSportsItem;",
            ">;"
        }
    .end annotation
.end field

.field private lastClickTIme:J

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const v2, 0x7f0202c9

    .line 49
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->dataList:Ljava/util/List;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->lastClickTIme:J

    .line 50
    iput-object p1, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->context:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 53
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 58
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;

    .prologue
    .line 38
    iget-wide v0, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->lastClickTIme:J

    return-wide v0
.end method

.method static synthetic access$002(Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;J)J
    .locals 1
    .param p0, "x0"    # Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;
    .param p1, "x1"    # J

    .prologue
    .line 38
    iput-wide p1, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->lastClickTIme:J

    return-wide p1
.end method

.method static synthetic access$100(Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;Lcom/nubia/nucms/bean/NuCmsSportsItem;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;
    .param p1, "x1"    # Lcom/nubia/nucms/bean/NuCmsSportsItem;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->clickViewThenDealWith(Lcom/nubia/nucms/bean/NuCmsSportsItem;)V

    return-void
.end method

.method private clickViewThenDealWith(Lcom/nubia/nucms/bean/NuCmsSportsItem;)V
    .locals 14
    .param p1, "mNuCmsSportsItem"    # Lcom/nubia/nucms/bean/NuCmsSportsItem;

    .prologue
    .line 235
    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getDetail()Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;->getType()I

    move-result v2

    .line 237
    .local v2, "gameStatus":I
    const/4 v10, 0x1

    if-ne v2, v10, :cond_0

    .line 239
    const-string v10, "ThirdPardJump"

    invoke-static {v10}, Lcn/nubia/calendar/util/TrackUtils;->sendEvent(Ljava/lang/String;)V

    .line 241
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 242
    .local v4, "intent":Landroid/content/Intent;
    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getDetail()Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 244
    .local v1, "content_url":Landroid/net/Uri;
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 245
    iget-object v10, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v10, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 283
    .end local v1    # "content_url":Landroid/net/Uri;
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 246
    :cond_0
    const/4 v10, 0x2

    if-ne v2, v10, :cond_1

    .line 248
    const-string v10, "ThirdPardJump"

    invoke-static {v10}, Lcn/nubia/calendar/util/TrackUtils;->sendEvent(Ljava/lang/String;)V

    .line 250
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 251
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getDetail()Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 253
    .restart local v1    # "content_url":Landroid/net/Uri;
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 254
    iget-object v10, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v10, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 257
    .end local v1    # "content_url":Landroid/net/Uri;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v10, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getId()I

    move-result v11

    invoke-static {v10, v11}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->hasMatchId(Landroid/content/Context;I)Z

    move-result v3

    .line 258
    .local v3, "hasRemind":Z
    if-eqz v3, :cond_2

    .line 259
    iget-object v10, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getId()I

    move-result v11

    invoke-static {v10, v11}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->deleteMatchId(Landroid/content/Context;I)V

    .line 260
    invoke-virtual {p0}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->notifyDataSetChanged()V

    .line 262
    iget-object v10, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->context:Landroid/content/Context;

    invoke-static {v10, p1}, Lcn/nubia/SportsGameEvents/SportsDefView/RemindReceive;->getPendingIntent(Landroid/content/Context;Lcom/nubia/nucms/bean/NuCmsSportsItem;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 263
    .local v5, "pindingIntent":Landroid/app/PendingIntent;
    iget-object v10, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->context:Landroid/content/Context;

    const-string v11, "alarm"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 264
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 267
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    .end local v5    # "pindingIntent":Landroid/app/PendingIntent;
    :cond_2
    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getId()I

    move-result v10

    invoke-static {v10}, Lcn/nubia/calendar/util/TrackUtils;->onClickReminder(I)V

    .line 269
    iget-object v10, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->context:Landroid/content/Context;

    invoke-static {v10, p1}, Lcn/nubia/SportsGameEvents/SportsDefView/RemindReceive;->getPendingIntent(Landroid/content/Context;Lcom/nubia/nucms/bean/NuCmsSportsItem;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 270
    .restart local v5    # "pindingIntent":Landroid/app/PendingIntent;
    iget-object v10, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->context:Landroid/content/Context;

    const-string v11, "alarm"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 271
    .restart local v0    # "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getMatchTime()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/32 v12, 0xdbba0

    sub-long v8, v10, v12

    .line 272
    .local v8, "remindTime":J
    const/4 v10, 0x0

    invoke-virtual {v0, v10, v8, v9, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 273
    iget-object v10, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getId()I

    move-result v11

    invoke-virtual {p0, v10, v11}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->saveMatchId(Landroid/content/Context;I)V

    .line 274
    iget-object v10, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c021f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/16 v13, 0xf

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 275
    .local v6, "remindText":Ljava/lang/String;
    iget-object v10, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->context:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-static {v10, v6, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 276
    .local v7, "toaster":Landroid/widget/Toast;
    const/16 v10, 0x11

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v11, v12}, Landroid/widget/Toast;->setGravity(III)V

    .line 277
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 279
    invoke-virtual {p0}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public static deleteMatchId(Landroid/content/Context;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 301
    invoke-static {p0, p1}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->hasMatchId(Landroid/content/Context;I)Z

    move-result v0

    .line 302
    .local v0, "hasMatchId":Z
    if-nez v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    const-string v5, "nendremind_sportsmatchid"

    invoke-static {p0, v5}, Lcn/nubia/SportsGameEvents/SportsUtils/SharedPreferencesOperate;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, "hasSaveMatchId":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 311
    const-string v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, "idArrary":[Ljava/lang/String;
    const-string v2, ""

    .line 313
    .local v2, "hasSaveMatchIdSave":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 314
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 313
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 317
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 321
    :cond_3
    const-string v5, "nendremind_sportsmatchid"

    invoke-static {p0, v5, v2}, Lcn/nubia/SportsGameEvents/SportsUtils/SharedPreferencesOperate;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSaveremindMatchid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 341
    const-string v1, "nendremind_sportsmatchid"

    invoke-static {p0, v1}, Lcn/nubia/SportsGameEvents/SportsUtils/SharedPreferencesOperate;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "hasSaveMatchId":Ljava/lang/String;
    return-object v0
.end method

.method public static hasMatchId(Landroid/content/Context;I)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x0

    .line 325
    const-string v4, "nendremind_sportsmatchid"

    invoke-static {p0, v4}, Lcn/nubia/SportsGameEvents/SportsUtils/SharedPreferencesOperate;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "hasSaveMatchId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 336
    :cond_0
    :goto_0
    return v3

    .line 329
    :cond_1
    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, "idArrary":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 331
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 332
    const/4 v3, 0x1

    goto :goto_0

    .line 330
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/nubia/nucms/bean/NuCmsSportsItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nubia/nucms/bean/NuCmsSportsItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->getItem(I)Lcom/nubia/nucms/bean/NuCmsSportsItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 81
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 86
    const/4 v2, 0x0

    .line 87
    .local v2, "mViewHold":Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;
    if-nez p2, :cond_0

    .line 88
    iget-object v9, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->context:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f03006f

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 89
    new-instance v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;

    .end local v2    # "mViewHold":Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;
    invoke-direct {v2, p0}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;-><init>(Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;)V

    .line 90
    .restart local v2    # "mViewHold":Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;
    const v9, 0x7f1101c4

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->segmentLine:Landroid/view/View;

    .line 91
    const v9, 0x7f1101c5

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->sportsTextView:Landroid/widget/TextView;

    .line 92
    const v9, 0x7f1101c6

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->oneTeamPic:Landroid/widget/ImageView;

    .line 93
    const v9, 0x7f1101c8

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->oneTeamName:Landroid/widget/TextView;

    .line 94
    const v9, 0x7f1101c9

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->centerTitle:Landroid/widget/TextView;

    .line 95
    const v9, 0x7f1101ca

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->gameResult:Landroid/widget/TextView;

    .line 96
    const v9, 0x7f1101cb

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->gameTime:Landroid/widget/TextView;

    .line 97
    const v9, 0x7f1101cc

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->operateView:Landroid/widget/Button;

    .line 98
    const v9, 0x7f1101cd

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->gameStatus:Landroid/widget/ImageView;

    .line 99
    const v9, 0x7f1101ce

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->twoTeamPic:Landroid/widget/ImageView;

    .line 100
    const v9, 0x7f1101d0

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->twoTeamName:Landroid/widget/TextView;

    .line 102
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 107
    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->getItem(I)Lcom/nubia/nucms/bean/NuCmsSportsItem;

    move-result-object v0

    .line 109
    .local v0, "mNuCmsSportsItem":Lcom/nubia/nucms/bean/NuCmsSportsItem;
    if-nez p1, :cond_1

    .line 110
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->sportsTextView:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->sportsTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getMatchType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->segmentLine:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :goto_1
    invoke-virtual {v0}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getHomeImg()Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, "oneTeamPicUrl":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 127
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v9

    iget-object v10, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->oneTeamPic:Landroid/widget/ImageView;

    iget-object v11, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v9, v5, v10, v11}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 131
    :goto_2
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->oneTeamName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getHome()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {v0}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getGuestImg()Ljava/lang/String;

    move-result-object v8

    .line 135
    .local v8, "twoTeamPicUrl":Ljava/lang/String;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 136
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v9

    iget-object v10, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->twoTeamPic:Landroid/widget/ImageView;

    iget-object v11, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v9, v8, v10, v11}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 140
    :goto_3
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->twoTeamName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getGuest()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {v0}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getDetail()Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;->getType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 148
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->centerTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->gameResult:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getHomeScore()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getGuestScore()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->gameResult:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->gameTime:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->operateView:Landroid/widget/Button;

    iget-object v10, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->context:Landroid/content/Context;

    const v11, 0x7f0c0222

    invoke-static {v10, v11}, Lcn/nubia/SportsGameEvents/SportsUtils/GetResouceInfo;->getStringInfo(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->operateView:Landroid/widget/Button;

    iget-object v10, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0080

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 154
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->operateView:Landroid/widget/Button;

    const v10, 0x7f0202c8

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 155
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->gameStatus:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    :goto_4
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->operateView:Landroid/widget/Button;

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 195
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->operateView:Landroid/widget/Button;

    new-instance v10, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$1;

    invoke-direct {v10, p0, v0}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$1;-><init>(Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;Lcom/nubia/nucms/bean/NuCmsSportsItem;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 214
    return-object p2

    .line 104
    .end local v0    # "mNuCmsSportsItem":Lcom/nubia/nucms/bean/NuCmsSportsItem;
    .end local v5    # "oneTeamPicUrl":Ljava/lang/String;
    .end local v8    # "twoTeamPicUrl":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mViewHold":Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;
    check-cast v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;

    .restart local v2    # "mViewHold":Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;
    goto/16 :goto_0

    .line 114
    .restart local v0    # "mNuCmsSportsItem":Lcom/nubia/nucms/bean/NuCmsSportsItem;
    :cond_1
    add-int/lit8 v9, p1, -0x1

    invoke-virtual {p0, v9}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->getItem(I)Lcom/nubia/nucms/bean/NuCmsSportsItem;

    move-result-object v1

    .line 115
    .local v1, "mNuCmsSportsItembefore":Lcom/nubia/nucms/bean/NuCmsSportsItem;
    invoke-virtual {v0}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getMatchType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getMatchType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 116
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->sportsTextView:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    :goto_5
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->segmentLine:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 118
    :cond_2
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->sportsTextView:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->sportsTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getMatchType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 129
    .end local v1    # "mNuCmsSportsItembefore":Lcom/nubia/nucms/bean/NuCmsSportsItem;
    .restart local v5    # "oneTeamPicUrl":Ljava/lang/String;
    :cond_3
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->oneTeamPic:Landroid/widget/ImageView;

    const v10, 0x7f0202c9

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 138
    .restart local v8    # "twoTeamPicUrl":Ljava/lang/String;
    :cond_4
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->twoTeamPic:Landroid/widget/ImageView;

    const v10, 0x7f0202c9

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 156
    :cond_5
    invoke-virtual {v0}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getDetail()Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;->getType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    .line 158
    invoke-virtual {v0}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getMatchTime()Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "matchTime":Ljava/lang/String;
    iget-object v9, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->context:Landroid/content/Context;

    invoke-static {v4, v9}, Lcn/nubia/SportsGameEvents/SportsUtils/SportsTimeOprate;->getCalendarTimeDataHHMM(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "matchStartTime":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 161
    .local v7, "sportsMatchAfterTitle":Ljava/lang/String;
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->centerTitle:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->gameResult:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getHomeScore()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getGuestScore()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->gameResult:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->gameTime:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->operateView:Landroid/widget/Button;

    iget-object v10, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->context:Landroid/content/Context;

    const v11, 0x7f0c021c

    invoke-static {v10, v11}, Lcn/nubia/SportsGameEvents/SportsUtils/GetResouceInfo;->getStringInfo(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->operateView:Landroid/widget/Button;

    const v10, 0x7f0202c7

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 167
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->operateView:Landroid/widget/Button;

    iget-object v10, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0075

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 168
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->gameStatus:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 171
    .end local v3    # "matchStartTime":Ljava/lang/String;
    .end local v4    # "matchTime":Ljava/lang/String;
    .end local v7    # "sportsMatchAfterTitle":Ljava/lang/String;
    :cond_6
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->centerTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {v0}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getMatchTime()Ljava/lang/String;

    move-result-object v4

    .line 174
    .restart local v4    # "matchTime":Ljava/lang/String;
    iget-object v9, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->context:Landroid/content/Context;

    invoke-static {v4, v9}, Lcn/nubia/SportsGameEvents/SportsUtils/SportsTimeOprate;->getCalendarTimeDataHHMM(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 175
    .restart local v3    # "matchStartTime":Ljava/lang/String;
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->gameResult:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->gameTime:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v9, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0c021e

    invoke-static {v9, v10}, Lcn/nubia/SportsGameEvents/SportsUtils/GetResouceInfo;->getStringInfo(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 179
    .local v6, "remind":Ljava/lang/String;
    iget-object v9, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/nubia/nucms/bean/NuCmsSportsItem;->getId()I

    move-result v10

    invoke-static {v9, v10}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->hasMatchId(Landroid/content/Context;I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 180
    iget-object v9, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0c021b

    invoke-static {v9, v10}, Lcn/nubia/SportsGameEvents/SportsUtils/GetResouceInfo;->getStringInfo(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 181
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->operateView:Landroid/widget/Button;

    const v10, 0x7f0202c4

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 182
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->operateView:Landroid/widget/Button;

    iget-object v10, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0080

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 183
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->gameTime:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :goto_6
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->operateView:Landroid/widget/Button;

    invoke-virtual {v9, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->gameStatus:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 185
    :cond_7
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->operateView:Landroid/widget/Button;

    const v10, 0x7f0202c7

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 186
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->operateView:Landroid/widget/Button;

    iget-object v10, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0075

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 187
    iget-object v9, v2, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter$ViewHold;->gameTime:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6
.end method

.method public saveMatchId(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 287
    invoke-static {p1, p2}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->hasMatchId(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    :goto_0
    return-void

    .line 291
    :cond_0
    const-string v1, "nendremind_sportsmatchid"

    invoke-static {p1, v1}, Lcn/nubia/SportsGameEvents/SportsUtils/SharedPreferencesOperate;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "hasSaveMatchId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    const-string v1, "nendremind_sportsmatchid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcn/nubia/SportsGameEvents/SportsUtils/SharedPreferencesOperate;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    const-string v1, "nendremind_sportsmatchid"

    invoke-static {p1, v1, v0}, Lcn/nubia/SportsGameEvents/SportsUtils/SharedPreferencesOperate;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized setDataList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsSportsItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/nubia/nucms/bean/NuCmsSportsItem;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 64
    :try_start_0
    iput-object p1, p0, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->dataList:Ljava/util/List;

    .line 65
    invoke-virtual {p0}, Lcn/nubia/SportsGameEvents/SportsDefView/SportsListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_0
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

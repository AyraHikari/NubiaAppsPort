.class Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "EditEventView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CalendarsAdapter"
.end annotation


# static fields
.field public static final EXCHANGE_ACCOUTN_TYPE:Ljava/lang/String; = "com.android.exchange"

.field public static final GOOGLE_ACCOUTN_TYPE:Ljava/lang/String; = "com.google"

.field public static final NUBIA_ACCOUTN_TYPE:Ljava/lang/String; = "com.ztemt"


# instance fields
.field private mAccounts:[Ljava/lang/String;

.field private mButtontextColor:I

.field private mCheckendId:I

.field private mContext:Landroid/content/Context;

.field private mNormaltextColor:I

.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/view/EditEventView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    const v1, 0x7f0d0194

    const v0, 0x7f030040

    .line 1350
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    .line 1351
    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 1352
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;->setDropDownViewResource(I)V

    .line 1353
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;->mContext:Landroid/content/Context;

    .line 1354
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;->mButtontextColor:I

    .line 1357
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;->mNormaltextColor:I

    .line 1359
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1371
    const v14, 0x7f1100d6

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1372
    .local v6, "colorBar":Landroid/widget/ImageView;
    const-string v14, "calendar_color"

    .line 1373
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1374
    .local v7, "colorColumn":I
    const-string v14, "calendar_displayName"

    .line 1375
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1376
    .local v10, "nameColumn":I
    const-string v14, "ownerAccount"

    .line 1377
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 1382
    .local v13, "ownerColumn":I
    const v14, 0x7f1100ec

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1383
    .local v9, "name":Landroid/widget/TextView;
    const v14, 0x7f1100ef

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 1384
    .local v11, "off":Landroid/widget/ImageView;
    const v14, 0x7f1100ee

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 1387
    .local v12, "on":Landroid/widget/ImageView;
    if-eqz v9, :cond_0

    .line 1388
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1389
    .local v8, "displayName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;->this$0:Lcn/nubia/calendar/submodule_agenda/view/EditEventView;

    invoke-static {v14, v8}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView;->access$2400(Lcn/nubia/calendar/submodule_agenda/view/EditEventView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1391
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;->mAccounts:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v15, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;->mCheckendId:I

    aget-object v14, v14, v15

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1392
    move-object/from16 v0, p0

    iget v14, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;->mButtontextColor:I

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1393
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1394
    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1402
    :goto_0
    const v14, 0x7f1100ed

    .line 1403
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1404
    .local v2, "accountName":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 1405
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1406
    .local v1, "account":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1407
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1408
    const/16 v14, 0x8

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1410
    const-string v14, "nobody@gmail.com"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1411
    const/16 v14, 0x8

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1412
    const v14, 0x7f0c0189

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setText(I)V

    .line 1422
    .end local v1    # "account":Ljava/lang/String;
    .end local v2    # "accountName":Landroid/widget/TextView;
    .end local v8    # "displayName":Ljava/lang/String;
    :cond_0
    const-string v14, "account_type"

    .line 1423
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 1424
    .local v5, "accountTypeColumn":I
    const-string v14, "account_name"

    .line 1425
    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 1426
    .local v3, "accountNameColumn":I
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1427
    .local v4, "accountType":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1428
    .local v2, "accountName":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 1431
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;->getDrawableIdByAccountsTypeAndName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1434
    :cond_1
    return-void

    .line 1396
    .end local v2    # "accountName":Ljava/lang/String;
    .end local v3    # "accountNameColumn":I
    .end local v4    # "accountType":Ljava/lang/String;
    .end local v5    # "accountTypeColumn":I
    .restart local v8    # "displayName":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;->mNormaltextColor:I

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1397
    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1398
    const/16 v14, 0x8

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getDrawableIdByAccountsTypeAndName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1438
    const/4 v0, 0x0

    .line 1439
    .local v0, "id":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1440
    const/4 v1, 0x0

    .line 1457
    :goto_0
    return v1

    .line 1443
    :cond_0
    const-string v1, "LOCAL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1446
    const v0, 0x7f020087

    :cond_1
    :goto_1
    move v1, v0

    .line 1457
    goto :goto_0

    .line 1450
    :cond_2
    const-string v1, "com.android.exchange"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1451
    const v0, 0x7f020090

    goto :goto_1

    .line 1452
    :cond_3
    const-string v1, "com.google"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1453
    const v0, 0x7f020091

    goto :goto_1

    .line 1454
    :cond_4
    const-string v1, "com.ztemt"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1455
    const v0, 0x7f020098

    goto :goto_1
.end method

.method public setAccounts([Ljava/lang/String;)V
    .locals 0
    .param p1, "accounts"    # [Ljava/lang/String;

    .prologue
    .line 1362
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;->mAccounts:[Ljava/lang/String;

    .line 1363
    return-void
.end method

.method public setCheckedId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1366
    iput p1, p0, Lcn/nubia/calendar/submodule_agenda/view/EditEventView$CalendarsAdapter;->mCheckendId:I

    .line 1367
    return-void
.end method

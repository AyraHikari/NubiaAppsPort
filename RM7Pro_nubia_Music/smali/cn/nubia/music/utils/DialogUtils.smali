.class public Lcn/nubia/music/utils/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# static fields
.field public static final BIND_XIAMI_ACCOUNT:I = 0x2

.field public static final FREE_VIP:I = 0x4

.field public static final LOGIN_ACCOUNT:I = 0x1

.field public static final PUCHASE_VIP:I = 0x3

.field public static final VIP_NEED_BINDE:I = 0x6

.field public static final VIP_NEED_LOGIN:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDialogByType(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 4

    .prologue
    const v3, 0x7f0b01ec

    const v2, 0x7f0b01d7

    .line 24
    const-string v1, ""

    .line 25
    const-string v0, ""

    .line 26
    packed-switch p1, :pswitch_data_0

    .line 53
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 56
    invoke-static {p0, v2, v1, p2}, Lcn/nubia/music/utils/MusicUtils;->createDialogForXiamiAccount(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 28
    :pswitch_0
    const v0, 0x7f0b0214

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {v3}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 32
    :pswitch_1
    const v0, 0x7f0b0213

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v2}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 36
    :pswitch_2
    const v0, 0x7f0b0218

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 37
    const v0, 0x7f0b020a

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 40
    :pswitch_3
    const v0, 0x7f0b0215

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 41
    const v0, 0x7f0b01e6

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 44
    :pswitch_4
    const v0, 0x7f0b0217

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v3}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 48
    :pswitch_5
    const v0, 0x7f0b0216

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-static {v2}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 26
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static showDialog(Landroid/content/Context;ILandroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 60
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 61
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, p1, p2}, Lcn/nubia/music/utils/DialogUtils;->createDialogByType(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 66
    :cond_0
    return-void
.end method

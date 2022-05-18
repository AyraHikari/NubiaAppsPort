.class public Lcn/nubia/deskclock/ui/NubiaCtaDialog;
.super Ljava/lang/Object;
.source "NubiaCtaDialog.java"


# static fields
.field private static final CTA_OPEN:I = 0x0

.field private static final CTA_PERMISSION:Ljava/lang/String; = "cta_permission"

.field private static final CTA_PERSIST:Ljava/lang/String; = "persist.sys.cta.disable"

.field private static final ENABLE_REYUN_KEY:Ljava/lang/String; = "DeskClock_enableUmeng"

.field private static final ENABLE_REYUN_VALUE:Ljava/lang/String; = "true"

.field public static final IS_ALLOW_ACCESS_NETWORK:Ljava/lang/String; = "isAllowAccessNetwork"

.field private static final IS_FIRST_LAUNCH:Ljava/lang/String; = "isFirstLaunch"

.field private static final TAG:Ljava/lang/String; = "NubiaCtaDialog"


# instance fields
.field private mDialog:Lcn/nubia/commonui/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/ui/NubiaCtaDialog;Landroid/content/Context;Lcn/nubia/deskclock/inter/INubiaCtaCallback;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/ui/NubiaCtaDialog;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcn/nubia/deskclock/inter/INubiaCtaCallback;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcn/nubia/deskclock/ui/NubiaCtaDialog;->requestPermissions(Landroid/content/Context;Lcn/nubia/deskclock/inter/INubiaCtaCallback;)V

    return-void
.end method

.method private requestPermissions(Landroid/content/Context;Lcn/nubia/deskclock/inter/INubiaCtaCallback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nubiaCtaCallBack"    # Lcn/nubia/deskclock/inter/INubiaCtaCallback;

    .prologue
    .line 119
    new-instance v0, Lcn/nubia/deskclock/ui/NubiaCtaDialog$3;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/deskclock/ui/NubiaCtaDialog$3;-><init>(Lcn/nubia/deskclock/ui/NubiaCtaDialog;Landroid/content/Context;Lcn/nubia/deskclock/inter/INubiaCtaCallback;)V

    .line 153
    .local v0, "callBack":Lcn/nubia/deskclock/util/PermissionRequestUtil$PermissionRequestCallback;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcn/nubia/deskclock/util/PermissionRequestUtil;->getPermissions()[Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v0}, Lcn/nubia/deskclock/util/PermissionRequestUtil;->requestPackagePermission(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcn/nubia/deskclock/util/PermissionRequestUtil$PermissionRequestCallback;)I

    .line 154
    return-void
.end method

.method private shouldShowCta(Landroid/content/Context;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 42
    const-string v7, "persist.sys.cta.disable"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 43
    .local v3, "open":I
    const-string v1, "true"

    .line 45
    .local v1, "enableReYun":Ljava/lang/String;
    :try_start_0
    const-string v7, "nubia_deskclock_feature"

    const-string v8, "DeskClock_enableUmeng"

    invoke-static {v7, v8}, Lcn/nubia/config/android/NubiaFeatureConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 49
    :goto_0
    if-nez v3, :cond_0

    move v0, v5

    .line 50
    .local v0, "enableCta":Z
    :goto_1
    const-string v7, "true"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 51
    .local v2, "enableReyun":Z
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 52
    invoke-static {p1}, Lcn/nubia/deskclock/util/Utils;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v4, v5

    .line 53
    .local v4, "shouldShow":Z
    :goto_2
    return v4

    .end local v0    # "enableCta":Z
    .end local v2    # "enableReyun":Z
    .end local v4    # "shouldShow":Z
    :cond_0
    move v0, v6

    .line 49
    goto :goto_1

    .restart local v0    # "enableCta":Z
    .restart local v2    # "enableReyun":Z
    :cond_1
    move v4, v6

    .line 52
    goto :goto_2

    .line 47
    .end local v0    # "enableCta":Z
    .end local v2    # "enableReyun":Z
    :catch_0
    move-exception v7

    goto :goto_0
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 117
    :cond_0
    return-void
.end method

.method public showCtaDialog(Landroid/content/Context;Lcn/nubia/deskclock/inter/INubiaCtaCallback;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcn/nubia/deskclock/inter/INubiaCtaCallback;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/ui/NubiaCtaDialog;->shouldShowCta(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 110
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v11, "layout_inflater"

    .line 62
    invoke-virtual {p1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 63
    .local v5, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 64
    .local v8, "res":Landroid/content/res/Resources;
    const v11, 0x7f04002a

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 65
    .local v3, "contentView":Landroid/view/View;
    const v11, 0x7f1200ab

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    .local v0, "bottomText":Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0f00a0

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 67
    .local v2, "color":I
    const-string v11, "NubiaCtaDialog"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " showCtaDialog  : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isInternalVersion()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isInternalVersion()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 69
    const v11, 0x7f1200a9

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0046

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :goto_1
    new-instance v11, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v11, p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x7f0d004c

    .line 90
    invoke-virtual {v11, v12}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v11

    .line 91
    invoke-virtual {v11, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0d004d

    .line 92
    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcn/nubia/deskclock/ui/NubiaCtaDialog$2;

    invoke-direct {v13, p0, p1}, Lcn/nubia/deskclock/ui/NubiaCtaDialog$2;-><init>(Lcn/nubia/deskclock/ui/NubiaCtaDialog;Landroid/content/Context;)V

    invoke-virtual {v11, v12, v13}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v11

    const v12, 0x7f0d004e

    .line 100
    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcn/nubia/deskclock/ui/NubiaCtaDialog$1;

    invoke-direct/range {v13 .. v16}, Lcn/nubia/deskclock/ui/NubiaCtaDialog$1;-><init>(Lcn/nubia/deskclock/ui/NubiaCtaDialog;Landroid/content/Context;Lcn/nubia/deskclock/inter/INubiaCtaCallback;)V

    invoke-virtual {v11, v12, v13}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v11

    .line 106
    invoke-virtual {v11}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 107
    iget-object v11, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v11}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 108
    iget-object v11, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 109
    iget-object v11, p0, Lcn/nubia/deskclock/ui/NubiaCtaDialog;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcn/nubia/commonui/app/AlertDialog;->setCancelable(Z)V

    goto/16 :goto_0

    .line 72
    :cond_1
    const v11, 0x7f1200a9

    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0047

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 75
    .local v10, "textWith":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d003e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "clockPrivacyPolicy":Ljava/lang/String;
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 77
    .local v7, "privacyPolicySpannable":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v10, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 78
    .local v6, "privacyPolicyIndex":I
    if-ltz v6, :cond_2

    .line 79
    move v9, v6

    .line 80
    .local v9, "startPrivacyPolicyIndex":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    add-int v4, v9, v11

    .line 81
    .local v4, "endPrivacyPolicyIndex":I
    new-instance v11, Landroid/text/style/URLSpan;

    const-string v12, "https://account.nubia.com/res/html/deskclock_privacy.html"

    invoke-direct {v11, v12}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x12

    invoke-virtual {v7, v11, v9, v4, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 82
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v11, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v12, 0x12

    invoke-virtual {v7, v11, v9, v4, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 85
    .end local v4    # "endPrivacyPolicyIndex":I
    .end local v9    # "startPrivacyPolicyIndex":I
    :cond_2
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 87
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_1
.end method

.class public Lcn/nubia/music/utils/CtsManager;
.super Ljava/lang/Object;
.source "CtsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;
    }
.end annotation


# static fields
.field public static final MY_PERMISSIONS_REQUEST_READ_PHONE_STATE:I = 0x14


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCtsDialog:Lcn/nubia/commonui/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcn/nubia/music/utils/CtsManager;->mActivity:Landroid/app/Activity;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/utils/CtsManager;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/music/utils/CtsManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getNeedPermission()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 166
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    .line 169
    return-object v0
.end method

.method private getPermissionShowInCtsDialog(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcn/nubia/music/utils/CtsManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    .line 62
    :cond_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcn/nubia/music/utils/CtsManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static hasNecessaryPermission(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 134
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasNeedPermission(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 150
    invoke-static {}, Lcn/nubia/music/utils/CtsManager;->getNeedPermission()[Ljava/lang/String;

    move-result-object v5

    .line 152
    array-length v6, v5

    move v3, v2

    move v4, v1

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v0, v5, v3

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 153
    invoke-static {v7, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    and-int/2addr v4, v0

    .line 152
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 153
    goto :goto_1

    .line 156
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allPermissionsGranted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " context name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 157
    return v4
.end method

.method private requestPermissions([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcn/nubia/music/utils/CtsManager;->mActivity:Landroid/app/Activity;

    const/16 v1, 0x14

    invoke-static {v0, p1, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 122
    return-void
.end method

.method private showWarningDialog(Ljava/lang/StringBuffer;Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    iget-object v0, p0, Lcn/nubia/music/utils/CtsManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 79
    const v1, 0x7f030026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 81
    const v1, 0x7f10008d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 82
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/nubia/music/utils/CtsManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {v1, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/utils/CtsManager;->mActivity:Landroid/app/Activity;

    .line 86
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/nubia/music/utils/CtsManager$2;

    invoke-direct {v2, p0, p2}, Lcn/nubia/music/utils/CtsManager$2;-><init>(Lcn/nubia/music/utils/CtsManager;Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;)V

    .line 85
    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/utils/CtsManager;->mActivity:Landroid/app/Activity;

    .line 98
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0130

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/nubia/music/utils/CtsManager$1;

    invoke-direct {v2, p0}, Lcn/nubia/music/utils/CtsManager$1;-><init>(Lcn/nubia/music/utils/CtsManager;)V

    .line 97
    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/utils/CtsManager;->mCtsDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 114
    iget-object v0, p0, Lcn/nubia/music/utils/CtsManager;->mCtsDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 115
    iget-object v0, p0, Lcn/nubia/music/utils/CtsManager;->mCtsDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 116
    iget-object v0, p0, Lcn/nubia/music/utils/CtsManager;->mCtsDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/app/AlertDialog;->setCancelable(Z)V

    .line 117
    return-void
.end method


# virtual methods
.method public dissDiglog()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/nubia/music/utils/CtsManager;->mCtsDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/utils/CtsManager;->mCtsDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcn/nubia/music/utils/CtsManager;->mCtsDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/utils/CtsManager;->mCtsDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 74
    :cond_0
    return-void
.end method

.method public hasNecessaryPermission()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcn/nubia/music/utils/CtsManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/CtsManager;->hasNecessaryPermission(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public hasNeedPermission()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    invoke-static {}, Lcn/nubia/music/utils/CtsManager;->getNeedPermission()[Ljava/lang/String;

    move-result-object v5

    .line 141
    array-length v6, v5

    move v3, v2

    move v4, v1

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v0, v5, v3

    .line 142
    iget-object v7, p0, Lcn/nubia/music/utils/CtsManager;->mActivity:Landroid/app/Activity;

    .line 143
    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 142
    invoke-static {v7, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    and-int/2addr v4, v0

    .line 141
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 142
    goto :goto_1

    .line 145
    :cond_1
    return v4
.end method

.method public markCtsPermissionIsNotFirstLaunch()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "markCtsPermissionIsNotFirstLaunch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "first_launch_cts"

    const/4 v2, 0x1

    invoke-static {v3, v1, v2}, Lcn/nubia/music/utils/SharedPrefersHelper;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 126
    const-string v0, "first_launch_cts"

    invoke-static {v3, v0, v3}, Lcn/nubia/music/utils/SharedPrefersHelper;->putBoolean(ILjava/lang/String;Z)V

    .line 127
    return-void
.end method

.method public requestCtsPermissions(Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 32
    invoke-static {}, Lcn/nubia/music/utils/CtsManager;->getNeedPermission()[Ljava/lang/String;

    move-result-object v3

    .line 35
    array-length v4, v3

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 36
    iget-object v6, p0, Lcn/nubia/music/utils/CtsManager;->mActivity:Landroid/app/Activity;

    .line 37
    invoke-static {v6, v5}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    or-int/2addr v2, v5

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestPermissionRationale : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " first : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "first_launch_cts"

    invoke-static {v0, v4, v7}, Lcn/nubia/music/utils/SharedPrefersHelper;->getBoolean(ILjava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 41
    const-string v1, "first_launch_cts"

    invoke-static {v0, v1, v7}, Lcn/nubia/music/utils/SharedPrefersHelper;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    .line 43
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 44
    array-length v2, v3

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v4, v3, v0

    .line 45
    iget-object v5, p0, Lcn/nubia/music/utils/CtsManager;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 48
    invoke-direct {p0, v4}, Lcn/nubia/music/utils/CtsManager;->getPermissionShowInCtsDialog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 51
    :cond_2
    invoke-direct {p0, v1, p1}, Lcn/nubia/music/utils/CtsManager;->showWarningDialog(Ljava/lang/StringBuffer;Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;)V

    .line 56
    :goto_2
    return-void

    .line 54
    :cond_3
    invoke-direct {p0, v3}, Lcn/nubia/music/utils/CtsManager;->requestPermissions([Ljava/lang/String;)V

    goto :goto_2
.end method

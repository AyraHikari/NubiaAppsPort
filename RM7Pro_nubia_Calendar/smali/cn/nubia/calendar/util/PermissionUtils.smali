.class public Lcn/nubia/calendar/util/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# static fields
.field public static permissions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.GET_ACCOUNTS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_CALENDAR"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.WRITE_CALENDAR"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/util/PermissionUtils;->permissions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDontHavePermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 48
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 52
    :goto_0
    return v0

    .line 51
    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 52
    .local v0, "checkResult":Z
    :cond_1
    goto :goto_0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 39
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 43
    :goto_0
    return v0

    .line 42
    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 43
    .local v0, "checkResult":Z
    :goto_1
    goto :goto_0

    .line 42
    .end local v0    # "checkResult":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static judgeAllPermission(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v1, 0x1

    .line 58
    .local v1, "hasAllPermission":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v4, Lcn/nubia/calendar/util/PermissionUtils;->permissions:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 59
    sget-object v4, Lcn/nubia/calendar/util/PermissionUtils;->permissions:[Ljava/lang/String;

    aget-object v3, v4, v2

    .line 60
    .local v3, "permission":Ljava/lang/String;
    invoke-static {p0, v3}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 61
    .local v0, "flag":Z
    if-nez v0, :cond_1

    .line 62
    const/4 v1, 0x0

    .line 63
    const-string v4, "calendar_preset"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "permission = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .end local v0    # "flag":Z
    .end local v3    # "permission":Ljava/lang/String;
    :cond_0
    return v1

    .line 58
    .restart local v0    # "flag":Z
    .restart local v3    # "permission":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static showCtsWarningDialog(Ljava/lang/String;Landroid/app/Activity;)Lcn/nubia/commonui/app/AlertDialog;
    .locals 8
    .param p0, "permissionInCtsDialog"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 73
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030047

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 75
    .local v1, "layout":Landroid/widget/RelativeLayout;
    const v5, 0x7f11004b

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 76
    .local v4, "title":Landroid/widget/TextView;
    const v5, 0x7f1100c3

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 77
    .local v3, "msg":Landroid/widget/TextView;
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    new-instance v5, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v5, p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-virtual {v5, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    .line 81
    invoke-virtual {p1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcn/nubia/calendar/util/PermissionUtils$2;

    invoke-direct {v7, p1}, Lcn/nubia/calendar/util/PermissionUtils$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v5, v6, v7}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c0140

    .line 91
    invoke-virtual {p1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcn/nubia/calendar/util/PermissionUtils$1;

    invoke-direct {v7, p1}, Lcn/nubia/calendar/util/PermissionUtils$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v5, v6, v7}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v5

    .line 107
    invoke-virtual {v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v2

    .line 108
    .local v2, "mDialog":Lcn/nubia/commonui/app/AlertDialog;
    invoke-virtual {v2}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 109
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 111
    return-object v2
.end method

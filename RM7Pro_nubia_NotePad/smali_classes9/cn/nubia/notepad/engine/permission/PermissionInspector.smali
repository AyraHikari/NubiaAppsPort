.class public Lcn/nubia/notepad/engine/permission/PermissionInspector;
.super Ljava/lang/Object;
.source "PermissionInspector.java"


# static fields
.field public static final REQUSET_PERMISSOM_ALL:I = 0xc

.field public static final REQUSET_PERMISSOM_CONTACTSANDPHONESTATE:I = 0x10

.field public static final REQUSET_PERMISSOM_RECORDRAIDO:I = 0xf

.field public static final REQUSET_PERMISSOM_STORAGE:I = 0xd


# instance fields
.field private final IS_FIRST_LAUNCH:Ljava/lang/String;

.field private context:Landroid/app/Activity;

.field private mAlerDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private onRequestPermissionsListener:Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "isFirstLaunch"

    iput-object v0, p0, Lcn/nubia/notepad/engine/permission/PermissionInspector;->IS_FIRST_LAUNCH:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/engine/permission/PermissionInspector;->mAlerDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 46
    iput-object p1, p0, Lcn/nubia/notepad/engine/permission/PermissionInspector;->context:Landroid/app/Activity;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/notepad/engine/permission/PermissionInspector;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/engine/permission/PermissionInspector;

    .prologue
    .line 32
    invoke-direct {p0}, Lcn/nubia/notepad/engine/permission/PermissionInspector;->startPermissionSettingActicity()V

    return-void
.end method

.method private allPermissionsGranted([Ljava/lang/String;)Z
    .locals 5
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 96
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 97
    .local v0, "permission":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/notepad/engine/permission/PermissionInspector;->context:Landroid/app/Activity;

    invoke-static {v4, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    .end local v0    # "permission":Ljava/lang/String;
    :goto_1
    return v1

    .line 96
    .restart local v0    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "permission":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private hideDialog()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcn/nubia/notepad/engine/permission/PermissionInspector;->mAlerDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/notepad/engine/permission/PermissionInspector;->mAlerDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcn/nubia/notepad/engine/permission/PermissionInspector;->mAlerDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/engine/permission/PermissionInspector;->mAlerDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 165
    :cond_0
    return-void
.end method

.method private isFirstLaunch()Z
    .locals 5

    .prologue
    .line 105
    iget-object v2, p0, Lcn/nubia/notepad/engine/permission/PermissionInspector;->context:Landroid/app/Activity;

    .line 106
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 107
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    const-string v2, "isFirstLaunch"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 108
    .local v0, "isFirstLaunch":Z
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "isFirstLaunch"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 109
    return v0
.end method

.method private shouldShowRequestPermissionRationale([Ljava/lang/String;)Z
    .locals 5
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 87
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 88
    .local v0, "permission":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/notepad/engine/permission/PermissionInspector;->context:Landroid/app/Activity;

    invoke-static {v4, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    const/4 v1, 0x1

    .line 92
    .end local v0    # "permission":Ljava/lang/String;
    :cond_0
    return v1

    .line 87
    .restart local v0    # "permission":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private startPermissionSettingActicity()V
    .locals 5

    .prologue
    .line 168
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/notepad/engine/permission/PermissionInspector;->context:Landroid/app/Activity;

    .line 169
    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 170
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 171
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 173
    :try_start_0
    iget-object v2, p0, Lcn/nubia/notepad/engine/permission/PermissionInspector;->context:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public isPermissionGranted([Ljava/lang/String;)Z
    .locals 2
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcn/nubia/notepad/engine/permission/PermissionInspector;->allPermissionsGranted([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestPermissions(Ljava/lang/String;[Ljava/lang/String;Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "listener"    # Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    iput-object p3, p0, Lcn/nubia/notepad/engine/permission/PermissionInspector;->onRequestPermissionsListener:Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;

    .line 52
    invoke-virtual {p0, p2}, Lcn/nubia/notepad/engine/permission/PermissionInspector;->isPermissionGranted([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcn/nubia/notepad/engine/permission/PermissionInspector;->onRequestPermissionsListener:Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;

    invoke-interface {v1}, Lcn/nubia/notepad/utils/CtaPermissionUtils$OnRequestPermissionsListener;->onGranted()V

    .line 80
    :goto_0
    return-void

    .line 61
    :cond_0
    const/16 v0, 0xc

    .line 62
    .local v0, "requestCode":I
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 76
    const/16 v0, 0xc

    .line 78
    :goto_2
    iget-object v1, p0, Lcn/nubia/notepad/engine/permission/PermissionInspector;->context:Landroid/app/Activity;

    invoke-static {v1, p2, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 62
    :sswitch_0
    const-string v2, "all"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "Storage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "RecordRadio"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "PhoneStateAndContacts"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    .line 64
    :pswitch_0
    const/16 v0, 0xc

    .line 65
    goto :goto_2

    .line 67
    :pswitch_1
    const/16 v0, 0xd

    .line 68
    goto :goto_2

    .line 70
    :pswitch_2
    const/16 v0, 0xf

    .line 71
    goto :goto_2

    .line 73
    :pswitch_3
    const/16 v0, 0x10

    .line 74
    goto :goto_2

    .line 62
    nop

    :sswitch_data_0
    .sparse-switch
        -0x62474499 -> :sswitch_3
        -0x4ecf95f6 -> :sswitch_2
        -0xd1725a5 -> :sswitch_1
        0x179a1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public showWarningDialog()V
    .locals 7

    .prologue
    const v6, 0x7f0f0054

    const/4 v5, 0x0

    .line 114
    invoke-direct {p0}, Lcn/nubia/notepad/engine/permission/PermissionInspector;->hideDialog()V

    .line 115
    iget-object v2, p0, Lcn/nubia/notepad/engine/permission/PermissionInspector;->context:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03001a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 117
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcn/nubia/notepad/engine/permission/PermissionInspector;->context:Landroid/app/Activity;

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    const v2, 0x7f0f0052

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 121
    :cond_0
    iget-object v2, p0, Lcn/nubia/notepad/engine/permission/PermissionInspector;->context:Landroid/app/Activity;

    const-string v3, "android.permission.RECORD_AUDIO"

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    const v2, 0x7f0f0053

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :cond_1
    iget-object v2, p0, Lcn/nubia/notepad/engine/permission/PermissionInspector;->context:Landroid/app/Activity;

    const-string v3, "android.permission.CALL_PHONE"

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :cond_2
    iget-object v2, p0, Lcn/nubia/notepad/engine/permission/PermissionInspector;->context:Landroid/app/Activity;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 131
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :cond_3
    iget-object v2, p0, Lcn/nubia/notepad/engine/permission/PermissionInspector;->context:Landroid/app/Activity;

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 135
    const v2, 0x7f0f0055

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 137
    :cond_4
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/nubia/notepad/engine/permission/PermissionInspector;->context:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    .local v0, "dialogBuild":Lcn/nubia/commonui/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 139
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 140
    const v2, 0x7f0a00a5

    new-instance v3, Lcn/nubia/notepad/engine/permission/PermissionInspector$1;

    invoke-direct {v3, p0}, Lcn/nubia/notepad/engine/permission/PermissionInspector$1;-><init>(Lcn/nubia/notepad/engine/permission/PermissionInspector;)V

    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 148
    const v2, 0x7f0a00a4

    new-instance v3, Lcn/nubia/notepad/engine/permission/PermissionInspector$2;

    invoke-direct {v3, p0}, Lcn/nubia/notepad/engine/permission/PermissionInspector$2;-><init>(Lcn/nubia/notepad/engine/permission/PermissionInspector;)V

    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 156
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/notepad/engine/permission/PermissionInspector;->mAlerDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 157
    iget-object v2, p0, Lcn/nubia/notepad/engine/permission/PermissionInspector;->mAlerDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v2}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 158
    return-void
.end method

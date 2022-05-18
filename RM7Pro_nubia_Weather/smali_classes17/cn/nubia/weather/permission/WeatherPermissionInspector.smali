.class public Lcn/nubia/weather/permission/WeatherPermissionInspector;
.super Ljava/lang/Object;
.source "WeatherPermissionInspector.java"


# static fields
.field public static final IS_FIRST_LAUNCH:Ljava/lang/String; = "isFirstLaunch"

.field public static PERMISSION:[Ljava/lang/String; = null

.field public static final REQUSET_PERMISSOM_ALL:I = 0xc

.field private static final TAG:Ljava/lang/String; = "WeatherPermissionInspector"


# instance fields
.field private mAlerDialog:Lcn/nubia/commonui/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/weather/permission/WeatherPermissionInspector;->PERMISSION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/permission/WeatherPermissionInspector;->mAlerDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/weather/permission/WeatherPermissionInspector;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/permission/WeatherPermissionInspector;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/weather/permission/WeatherPermissionInspector;->startPermisionSettingActicity(Landroid/content/Context;)V

    return-void
.end method

.method private shouldShowWarningDialog(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 153
    const/4 v1, 0x0

    .line 154
    .local v1, "requestPermissionRationale":Z
    array-length v4, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p2, v3

    .local v0, "permission":Ljava/lang/String;
    move-object v2, p1

    .line 155
    check-cast v2, Landroid/app/Activity;

    .line 156
    invoke-static {v2, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 154
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 160
    .end local v0    # "permission":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .line 161
    invoke-virtual {p0, p1}, Lcn/nubia/weather/permission/WeatherPermissionInspector;->showWarmingDialog(Landroid/content/Context;)V

    .line 164
    :cond_1
    return v1
.end method

.method private startPermisionSettingActicity(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 143
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 146
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 195
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v2, v5, :cond_6

    .line 196
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 197
    :cond_0
    const-string v2, "WeatherPermissionInspector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPerimission: return context : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ;; permissions : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_1
    :goto_0
    return v4

    .line 202
    :cond_2
    const/4 v0, 0x1

    .line 203
    .local v0, "checkPermissionsResult":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-le v2, v5, :cond_3

    .line 204
    const/4 v2, 0x2

    new-array p2, v2, [Ljava/lang/String;

    .end local p2    # "permissions":[Ljava/lang/String;
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, p2, v4

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, p2, v3

    .line 209
    .restart local p2    # "permissions":[Ljava/lang/String;
    :cond_3
    array-length v6, p2

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_5

    aget-object v1, p2, v5

    .line 210
    .local v1, "permission":Ljava/lang/String;
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_2
    and-int/2addr v0, v2

    .line 209
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_1

    :cond_4
    move v2, v4

    .line 210
    goto :goto_2

    .line 213
    .end local v1    # "permission":Ljava/lang/String;
    :cond_5
    const-string v2, "WeatherPermissionInspector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " checkPerimission checkPermissionsResult : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    if-eqz v0, :cond_1

    move v4, v0

    .line 215
    goto :goto_0

    .end local v0    # "checkPermissionsResult":Z
    :cond_6
    move v4, v3

    .line 219
    goto :goto_0
.end method

.method public hideDialog()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcn/nubia/weather/permission/WeatherPermissionInspector;->mAlerDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/permission/WeatherPermissionInspector;->mAlerDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcn/nubia/weather/permission/WeatherPermissionInspector;->mAlerDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/permission/WeatherPermissionInspector;->mAlerDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 138
    :cond_0
    return-void
.end method

.method public isFirstLaunch(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    .line 75
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 76
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    const-string v2, "isFirstLaunch"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 78
    .local v0, "isFirstLaunch":Z
    return v0
.end method

.method public isPerssionGranted(Landroid/content/Context;[Ljava/lang/String;I)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 40
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v3, v6, :cond_7

    .line 41
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    instance-of v3, p1, Landroid/app/Activity;

    if-nez v3, :cond_1

    .line 70
    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return v5

    .line 44
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    const/4 v0, 0x1

    .line 45
    .local v0, "checkPermissionsResult":Z
    const/4 v2, 0x0

    .line 46
    .local v2, "requestPermissionRationale":Z
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-le v3, v6, :cond_2

    .line 47
    const/4 v3, 0x2

    new-array p2, v3, [Ljava/lang/String;

    .end local p2    # "permissions":[Ljava/lang/String;
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, p2, v5

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, p2, v4

    .line 52
    .restart local p2    # "permissions":[Ljava/lang/String;
    :cond_2
    array-length v7, p2

    move v6, v5

    :goto_1
    if-ge v6, v7, :cond_4

    aget-object v1, p2, v6

    .line 53
    .local v1, "permission":Ljava/lang/String;
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    :goto_2
    and-int/2addr v0, v3

    move-object v3, p1

    .line 55
    check-cast v3, Landroid/app/Activity;

    .line 56
    invoke-static {v3, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 52
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_1

    :cond_3
    move v3, v5

    .line 53
    goto :goto_2

    .line 59
    .end local v1    # "permission":Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_5

    move v5, v0

    .line 60
    goto :goto_0

    .line 62
    :cond_5
    invoke-virtual {p0, p1}, Lcn/nubia/weather/permission/WeatherPermissionInspector;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    if-nez v2, :cond_6

    move-object v3, p1

    .line 63
    check-cast v3, Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-virtual {p0, p1, v3}, Lcn/nubia/weather/permission/WeatherPermissionInspector;->showWarmingDialog(Landroid/content/Context;Lcn/nubia/weather/inner/ISettingsCallBack;)V

    goto :goto_0

    .line 65
    :cond_6
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    const/16 v3, 0xc

    invoke-static {p1, p2, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .end local v0    # "checkPermissionsResult":Z
    .end local v2    # "requestPermissionRationale":Z
    .restart local p1    # "context":Landroid/content/Context;
    :cond_7
    move v5, v4

    .line 70
    goto :goto_0
.end method

.method public requestPermissions(Landroid/app/Activity;)Z
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 168
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v2, v5, :cond_5

    .line 169
    if-nez p1, :cond_0

    .line 190
    :goto_0
    return v4

    .line 172
    :cond_0
    const/4 v0, 0x1

    .line 173
    .local v0, "checkPermissionsResult":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-le v2, v5, :cond_1

    .line 174
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v5, v2, v4

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v5, v2, v3

    sput-object v2, Lcn/nubia/weather/permission/WeatherPermissionInspector;->PERMISSION:[Ljava/lang/String;

    .line 179
    :cond_1
    sget-object v6, Lcn/nubia/weather/permission/WeatherPermissionInspector;->PERMISSION:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_1
    if-ge v5, v7, :cond_3

    aget-object v1, v6, v5

    .line 180
    .local v1, "permission":Ljava/lang/String;
    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    and-int/2addr v0, v2

    .line 179
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_1

    :cond_2
    move v2, v4

    .line 180
    goto :goto_2

    .line 183
    .end local v1    # "permission":Ljava/lang/String;
    :cond_3
    if-ne v0, v3, :cond_4

    move v4, v0

    .line 184
    goto :goto_0

    .line 186
    :cond_4
    sget-object v2, Lcn/nubia/weather/permission/WeatherPermissionInspector;->PERMISSION:[Ljava/lang/String;

    const/16 v3, 0xc

    invoke-static {p1, v2, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .end local v0    # "checkPermissionsResult":Z
    :cond_5
    move v4, v3

    .line 190
    goto :goto_0
.end method

.method public showWarmingDialog(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v6, 0x7f100092

    const/4 v5, 0x0

    .line 83
    if-nez p1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/weather/permission/WeatherPermissionInspector;->hideDialog()V

    .line 87
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03001e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 89
    .local v1, "view":Landroid/view/View;
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :cond_1
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :cond_2
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, "dialogBuild":Lcn/nubia/commonui/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 111
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 112
    const v2, 0x7f09015f

    new-instance v3, Lcn/nubia/weather/permission/WeatherPermissionInspector$1;

    invoke-direct {v3, p0, p1}, Lcn/nubia/weather/permission/WeatherPermissionInspector$1;-><init>(Lcn/nubia/weather/permission/WeatherPermissionInspector;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 121
    const v2, 0x7f09015e

    new-instance v3, Lcn/nubia/weather/permission/WeatherPermissionInspector$2;

    invoke-direct {v3, p0}, Lcn/nubia/weather/permission/WeatherPermissionInspector$2;-><init>(Lcn/nubia/weather/permission/WeatherPermissionInspector;)V

    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 129
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/weather/permission/WeatherPermissionInspector;->mAlerDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 130
    iget-object v2, p0, Lcn/nubia/weather/permission/WeatherPermissionInspector;->mAlerDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v2}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public showWarmingDialog(Landroid/content/Context;Lcn/nubia/weather/inner/ISettingsCallBack;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcn/nubia/weather/inner/ISettingsCallBack;

    .prologue
    const v6, 0x7f100092

    const/4 v5, 0x0

    .line 223
    if-nez p1, :cond_0

    .line 265
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/weather/permission/WeatherPermissionInspector;->hideDialog()V

    .line 227
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03001e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 229
    .local v1, "view":Landroid/view/View;
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :cond_1
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 235
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 237
    :cond_2
    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {p1, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 239
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 241
    :cond_3
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 242
    .local v0, "dialogBuild":Lcn/nubia/commonui/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 243
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 244
    const v2, 0x7f09015f

    new-instance v3, Lcn/nubia/weather/permission/WeatherPermissionInspector$3;

    invoke-direct {v3, p0, p1}, Lcn/nubia/weather/permission/WeatherPermissionInspector$3;-><init>(Lcn/nubia/weather/permission/WeatherPermissionInspector;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 253
    const v2, 0x7f09015e

    new-instance v3, Lcn/nubia/weather/permission/WeatherPermissionInspector$4;

    invoke-direct {v3, p0, p2}, Lcn/nubia/weather/permission/WeatherPermissionInspector$4;-><init>(Lcn/nubia/weather/permission/WeatherPermissionInspector;Lcn/nubia/weather/inner/ISettingsCallBack;)V

    invoke-virtual {v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 263
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/weather/permission/WeatherPermissionInspector;->mAlerDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 264
    iget-object v2, p0, Lcn/nubia/weather/permission/WeatherPermissionInspector;->mAlerDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v2}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    goto :goto_0
.end method

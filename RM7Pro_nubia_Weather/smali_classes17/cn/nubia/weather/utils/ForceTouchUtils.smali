.class public Lcn/nubia/weather/utils/ForceTouchUtils;
.super Ljava/lang/Object;
.source "ForceTouchUtils.java"


# static fields
.field private static final ACTION_ADD:Ljava/lang/String; = "add"

.field private static final ACTION_QUERY:Ljava/lang/String; = "query"

.field private static final ACTION_REMOVE:Ljava/lang/String; = "remove"

.field private static final ACTION_UPDATE:Ljava/lang/String; = "update"

.field private static final EXTRA_ACTION:Ljava/lang/String; = "forcetouch_action"

.field private static final EXTRA_CLASS_NAME:Ljava/lang/String; = "className"

.field private static final EXTRA_ICON:Ljava/lang/String; = "forcetouch_icon"

.field private static final EXTRA_ICON_RES_NAME:Ljava/lang/String; = "forcetouch_icon_res_name"

.field private static final EXTRA_ID:Ljava/lang/String; = "forcetouch_id"

.field private static final EXTRA_INTENT:Ljava/lang/String; = "forcetouch_intent"

.field private static final EXTRA_LABLE_RES_NAME:Ljava/lang/String; = "forcetouch_lable_res_name"

.field private static final EXTRA_MSG:Ljava/lang/String; = "forcetouch_msg"

.field private static final EXTRA_MSG_ON_END:Ljava/lang/String; = "forcetouch_msg_on_end"

.field private static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final EXTRA_RANK:Ljava/lang/String; = "forcetouch_rank"

.field public static final ID_ADD_CITY:Ljava/lang/String; = "weather_add_city"

.field public static final ID_CITY_ONE:Ljava/lang/String; = "id_city_1"

.field public static final ID_CITY_THREE:Ljava/lang/String; = "id_city_3"

.field public static final ID_CITY_TWO:Ljava/lang/String; = "id_city_2"

.field private static final METHOD_FORCE_TOUCH_SHORTCUT:Ljava/lang/String; = "forceTouchShortcut"

.field private static final TAG:Ljava/lang/String; = "ForceTouchUtils"

.field private static final mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "content://cn.nubia.launcher.unreadMark"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/weather/utils/ForceTouchUtils;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addNormalShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "iconResName"    # Ljava/lang/String;
    .param p2, "lableResName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "rank"    # I

    .prologue
    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "packageName"

    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "className"

    const-class v2, Lcn/nubia/weather/ui/activity/MainActivity;

    .line 82
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "forcetouch_action"

    const-string v2, "add"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "forcetouch_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "forcetouch_icon_res_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "forcetouch_msg"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "forcetouch_intent"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 88
    const-string v1, "forcetouch_rank"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    invoke-static {v0}, Lcn/nubia/weather/utils/ForceTouchUtils;->doCall(Landroid/os/Bundle;)V

    .line 90
    return-void
.end method

.method public static addShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ILjava/lang/String;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "iconResName"    # Ljava/lang/String;
    .param p2, "lableResName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "rank"    # I
    .param p5, "temp"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "packageName"

    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "className"

    const-class v2, Lcn/nubia/weather/ui/activity/MainActivity;

    .line 63
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "forcetouch_action"

    const-string v2, "add"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "forcetouch_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "forcetouch_icon_res_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "forcetouch_msg"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "forcetouch_intent"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 69
    const-string v1, "forcetouch_rank"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    const-string v1, "forcetouch_msg_on_end"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {v0}, Lcn/nubia/weather/utils/ForceTouchUtils;->doCall(Landroid/os/Bundle;)V

    .line 73
    return-void
.end method

.method public static doCall(Landroid/os/Bundle;)V
    .locals 5
    .param p0, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 167
    :try_start_0
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcn/nubia/weather/utils/ForceTouchUtils;->mUri:Landroid/net/Uri;

    const-string v3, "forceTouchShortcut"

    const/4 v4, 0x0

    .line 168
    invoke-virtual {v1, v2, v3, v4, p0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static queryForceTouchIds()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 45
    .local v1, "extras":Landroid/os/Bundle;
    const-string v3, "packageName"

    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 46
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v3, "className"

    const-class v4, Lcn/nubia/weather/ui/activity/MainActivity;

    .line 48
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 47
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v3, "forcetouch_action"

    const-string v4, "query"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcn/nubia/weather/utils/ForceTouchUtils;->mUri:Landroid/net/Uri;

    const-string v5, "forceTouchShortcut"

    const/4 v6, 0x0

    .line 51
    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 52
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "shortcut_ids"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 53
    .local v2, "shortcutIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v2
.end method

.method public static removeShortcut(Ljava/lang/String;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "packageName"

    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "className"

    const-class v2, Lcn/nubia/weather/ui/activity/MainActivity;

    .line 98
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "forcetouch_action"

    const-string v2, "remove"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "forcetouch_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {v0}, Lcn/nubia/weather/utils/ForceTouchUtils;->doCall(Landroid/os/Bundle;)V

    .line 102
    return-void
.end method

.method public static updateMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "packageName"

    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 120
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v1, "className"

    const-class v2, Lcn/nubia/weather/ui/activity/MainActivity;

    .line 122
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "forcetouch_action"

    const-string v2, "update"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v1, "forcetouch_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v1, "forcetouch_msg"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {v0}, Lcn/nubia/weather/utils/ForceTouchUtils;->doCall(Landroid/os/Bundle;)V

    .line 127
    return-void
.end method

.method public static updateShortcutCustomIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 154
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 155
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "packageName"

    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 156
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v1, "className"

    const-class v2, Lcn/nubia/weather/ui/activity/MainActivity;

    .line 158
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "forcetouch_action"

    const-string v2, "update"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v1, "forcetouch_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v1, "forcetouch_icon"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 162
    invoke-static {v0}, Lcn/nubia/weather/utils/ForceTouchUtils;->doCall(Landroid/os/Bundle;)V

    .line 163
    return-void
.end method

.method public static updateShortcutIconAndText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "iconResName"    # Ljava/lang/String;
    .param p2, "lableResName"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "packageName"

    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 107
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "className"

    const-class v2, Lcn/nubia/weather/ui/activity/MainActivity;

    .line 109
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v1, "forcetouch_action"

    const-string v2, "update"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "forcetouch_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v1, "forcetouch_icon_res_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "forcetouch_lable_res_name"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {v0}, Lcn/nubia/weather/utils/ForceTouchUtils;->doCall(Landroid/os/Bundle;)V

    .line 115
    return-void
.end method

.method public static updateShortcutIntent(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 142
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 143
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "packageName"

    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 144
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v1, "className"

    const-class v2, Lcn/nubia/weather/ui/activity/MainActivity;

    .line 146
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v1, "forcetouch_action"

    const-string v2, "update"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "forcetouch_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v1, "forcetouch_intent"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 150
    invoke-static {v0}, Lcn/nubia/weather/utils/ForceTouchUtils;->doCall(Landroid/os/Bundle;)V

    .line 151
    return-void
.end method

.method public static updateShortcutRank(Ljava/lang/String;I)V
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "rank"    # I

    .prologue
    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "packageName"

    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v1, "className"

    const-class v2, Lcn/nubia/weather/ui/activity/MainActivity;

    .line 134
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "forcetouch_action"

    const-string v2, "update"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "forcetouch_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v1, "forcetouch_rank"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    invoke-static {v0}, Lcn/nubia/weather/utils/ForceTouchUtils;->doCall(Landroid/os/Bundle;)V

    .line 139
    return-void
.end method

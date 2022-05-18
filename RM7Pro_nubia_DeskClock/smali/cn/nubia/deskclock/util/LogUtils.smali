.class public Lcn/nubia/deskclock/util/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field public static final DESKCLOCK_LOG_SWITCH_IN_SYSTEM:Ljava/lang/String; = "deskclock_log_switch_in_system"

.field public static LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "DeskClock"

.field private static PRINT_LOG_IN_SYSTEM_FEATURE:Z

.field private static mMethod:Ljava/lang/reflect/Method;

.field private static mSlog:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/deskclock/util/LogUtils;->PRINT_LOG_IN_SYSTEM_FEATURE:Z

    .line 28
    sget-boolean v0, Lcn/nubia/deskclock/util/LogUtils;->PRINT_LOG_IN_SYSTEM_FEATURE:Z

    sput-boolean v0, Lcn/nubia/deskclock/util/LogUtils;->LOGV:Z

    .line 31
    :try_start_0
    const-string v0, "android.util.Slog"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcn/nubia/deskclock/util/LogUtils;->mSlog:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "Msg"    # Ljava/lang/String;

    .prologue
    .line 54
    sget-boolean v1, Lcn/nubia/deskclock/util/LogUtils;->PRINT_LOG_IN_SYSTEM_FEATURE:Z

    if-eqz v1, :cond_2

    .line 56
    :try_start_0
    sget-object v1, Lcn/nubia/deskclock/util/LogUtils;->mSlog:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 57
    const-string v1, "android.util.Slog"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcn/nubia/deskclock/util/LogUtils;->mSlog:Ljava/lang/Class;

    .line 59
    :cond_0
    sget-object v1, Lcn/nubia/deskclock/util/LogUtils;->mSlog:Ljava/lang/Class;

    const-string v2, "d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcn/nubia/deskclock/util/LogUtils;->mMethod:Ljava/lang/reflect/Method;

    .line 60
    sget-object v1, Lcn/nubia/deskclock/util/LogUtils;->mMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 61
    sget-object v1, Lcn/nubia/deskclock/util/LogUtils;->mMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeskClock:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 67
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeskClock:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "Msg"    # Ljava/lang/String;

    .prologue
    .line 93
    sget-boolean v1, Lcn/nubia/deskclock/util/LogUtils;->PRINT_LOG_IN_SYSTEM_FEATURE:Z

    if-eqz v1, :cond_2

    .line 95
    :try_start_0
    sget-object v1, Lcn/nubia/deskclock/util/LogUtils;->mSlog:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 96
    const-string v1, "android.util.Slog"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcn/nubia/deskclock/util/LogUtils;->mSlog:Ljava/lang/Class;

    .line 98
    :cond_0
    sget-object v1, Lcn/nubia/deskclock/util/LogUtils;->mSlog:Ljava/lang/Class;

    const-string v2, "e"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcn/nubia/deskclock/util/LogUtils;->mMethod:Ljava/lang/reflect/Method;

    .line 99
    sget-object v1, Lcn/nubia/deskclock/util/LogUtils;->mMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 100
    sget-object v1, Lcn/nubia/deskclock/util/LogUtils;->mMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeskClock:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_1
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 106
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeskClock:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "Msg"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 111
    sget-boolean v1, Lcn/nubia/deskclock/util/LogUtils;->PRINT_LOG_IN_SYSTEM_FEATURE:Z

    if-eqz v1, :cond_2

    .line 113
    :try_start_0
    sget-object v1, Lcn/nubia/deskclock/util/LogUtils;->mSlog:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 114
    const-string v1, "android.util.Slog"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcn/nubia/deskclock/util/LogUtils;->mSlog:Ljava/lang/Class;

    .line 116
    :cond_0
    sget-object v1, Lcn/nubia/deskclock/util/LogUtils;->mSlog:Ljava/lang/Class;

    const-string v2, "e"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/Throwable;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcn/nubia/deskclock/util/LogUtils;->mMethod:Ljava/lang/reflect/Method;

    .line 117
    sget-object v1, Lcn/nubia/deskclock/util/LogUtils;->mMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 118
    sget-object v1, Lcn/nubia/deskclock/util/LogUtils;->mMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeskClock:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_1
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 124
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeskClock:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static formatTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "millis"    # J

    .prologue
    .line 129
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS/E"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "Msg"    # Ljava/lang/String;

    .prologue
    .line 37
    sget-boolean v1, Lcn/nubia/deskclock/util/LogUtils;->PRINT_LOG_IN_SYSTEM_FEATURE:Z

    if-eqz v1, :cond_2

    .line 39
    :try_start_0
    sget-object v1, Lcn/nubia/deskclock/util/LogUtils;->mSlog:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 40
    sget-object v1, Lcn/nubia/deskclock/util/LogUtils;->mSlog:Ljava/lang/Class;

    const-string v2, "i"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcn/nubia/deskclock/util/LogUtils;->mMethod:Ljava/lang/reflect/Method;

    .line 42
    :cond_0
    sget-object v1, Lcn/nubia/deskclock/util/LogUtils;->mMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 43
    sget-object v1, Lcn/nubia/deskclock/util/LogUtils;->mMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeskClock:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_1
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 49
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeskClock:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static switchDebugMode(Landroid/content/Context;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "switchLog"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 133
    const-string v4, "DeskClock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " switchDebugMode   switchLog : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 135
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v4, "deskclock_log_switch_in_system"

    invoke-static {v0, v4, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    const-string v4, "deskclock_log_switch_in_system"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 137
    .local v1, "isOpen":I
    if-ne v1, v2, :cond_0

    :goto_0
    sput-boolean v2, Lcn/nubia/deskclock/util/LogUtils;->PRINT_LOG_IN_SYSTEM_FEATURE:Z

    .line 138
    const-string v2, "DeskClock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " switchDebugMode   PRINT_LOG_IN_SYSTEM_FEATURE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcn/nubia/deskclock/util/LogUtils;->PRINT_LOG_IN_SYSTEM_FEATURE:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void

    :cond_0
    move v2, v3

    .line 137
    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "Msg"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-boolean v1, Lcn/nubia/deskclock/util/LogUtils;->LOGV:Z

    if-eqz v1, :cond_1

    .line 73
    sget-boolean v1, Lcn/nubia/deskclock/util/LogUtils;->PRINT_LOG_IN_SYSTEM_FEATURE:Z

    if-eqz v1, :cond_2

    .line 75
    :try_start_0
    sget-object v1, Lcn/nubia/deskclock/util/LogUtils;->mSlog:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 76
    const-string v1, "android.util.Slog"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcn/nubia/deskclock/util/LogUtils;->mSlog:Ljava/lang/Class;

    .line 78
    :cond_0
    sget-object v1, Lcn/nubia/deskclock/util/LogUtils;->mSlog:Ljava/lang/Class;

    const-string v2, "v"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcn/nubia/deskclock/util/LogUtils;->mMethod:Ljava/lang/reflect/Method;

    .line 79
    sget-object v1, Lcn/nubia/deskclock/util/LogUtils;->mMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 80
    sget-object v1, Lcn/nubia/deskclock/util/LogUtils;->mMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeskClock:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_1
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 86
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeskClock:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

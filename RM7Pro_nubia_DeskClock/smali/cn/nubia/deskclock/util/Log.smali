.class public Lcn/nubia/deskclock/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "AlarmClock"

.field public static final LOGV:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "logMe"    # Ljava/lang/String;

    .prologue
    .line 51
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "logMe"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 57
    return-void
.end method

.method public static formatTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "millis"    # J

    .prologue
    .line 72
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
    .locals 0
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "logMe"    # Ljava/lang/String;

    .prologue
    .line 45
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "logMe"    # Ljava/lang/String;

    .prologue
    .line 39
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "logMe"    # Ljava/lang/String;

    .prologue
    .line 63
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "logMe"    # Ljava/lang/String;

    .prologue
    .line 69
    return-void
.end method

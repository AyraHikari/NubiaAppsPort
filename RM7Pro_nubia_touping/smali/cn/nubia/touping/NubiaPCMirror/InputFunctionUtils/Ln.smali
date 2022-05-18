.class public final Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln;
.super Ljava/lang/Object;
.source "Ln.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "[server] "

.field private static final TAG:Ljava/lang/String; = "scrcpy"

.field private static threshold:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;->DEBUG:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln;->threshold:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 40
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;->DEBUG:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    invoke-static {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln;->isEnabled(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "scrcpy"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[server] DEBUG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 61
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;->ERROR:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    invoke-static {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln;->isEnabled(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "scrcpy"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[server] ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 47
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;->INFO:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    invoke-static {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln;->isEnabled(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "scrcpy"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[server] INFO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method

.method public static initLogLevel(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;)V
    .locals 0
    .param p0, "level"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    .prologue
    .line 32
    sput-object p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln;->threshold:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    .line 33
    return-void
.end method

.method public static isEnabled(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;)Z
    .locals 2
    .param p0, "level"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;->ordinal()I

    move-result v0

    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln;->threshold:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    invoke-virtual {v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 54
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;->WARN:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    invoke-static {v0}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln;->isEnabled(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "scrcpy"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[server] WARN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method

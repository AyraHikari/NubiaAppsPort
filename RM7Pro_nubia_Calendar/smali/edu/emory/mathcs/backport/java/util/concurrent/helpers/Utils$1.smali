.class Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    const-string v0, "edu.emory.mathcs.backport.java.util.concurrent.NanoTimerProvider"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

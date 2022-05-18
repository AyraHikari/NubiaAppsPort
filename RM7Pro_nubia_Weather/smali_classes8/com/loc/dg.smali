.class public final Lcom/loc/dg;
.super Ljava/lang/Object;
.source "ALLog.java"


# static fields
.field private static volatile a:Lcom/loc/dh;


# direct methods
.method public static a(Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/loc/cv;->a:Z

    if-eqz v0, :cond_2

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/loc/dg;->a:Lcom/loc/dh;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/loc/dg;->a:Lcom/loc/dh;

    :cond_2
    return-void
.end method

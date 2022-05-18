.class public Lcom/hpplay/sdk/source/protocol/b/g;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hpplay/sdk/source/protocol/b/g$a;
    }
.end annotation


# static fields
.field private static final a:J = 0x4066599b76e2eb7aL


# instance fields
.field private b:Lcom/hpplay/sdk/source/protocol/b/g$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/hpplay/sdk/source/protocol/b/g$a;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 57
    if-nez p2, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The cause type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iput-object p2, p0, Lcom/hpplay/sdk/source/protocol/b/g;->b:Lcom/hpplay/sdk/source/protocol/b/g$a;

    .line 61
    return-void
.end method


# virtual methods
.method public a()Lcom/hpplay/sdk/source/protocol/b/g$a;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/hpplay/sdk/source/protocol/b/g;->b:Lcom/hpplay/sdk/source/protocol/b/g$a;

    return-object v0
.end method

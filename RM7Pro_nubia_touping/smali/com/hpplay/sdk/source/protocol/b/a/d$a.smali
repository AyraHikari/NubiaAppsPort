.class public Lcom/hpplay/sdk/source/protocol/b/a/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/protocol/b/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final I:Ljava/lang/String;

.field public final P:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/hpplay/sdk/source/protocol/b/a/d$a;->I:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/hpplay/sdk/source/protocol/b/a/d$a;->P:Ljava/lang/String;

    .line 55
    return-void
.end method

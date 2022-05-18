.class public Lu/aly/av$g;
.super Ljava/lang/Object;
.source "UMEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# static fields
.field private static final d:J = -0xe07c4e206fc836fL


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:J

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lu/aly/av$g;->a:Ljava/lang/Integer;

    .line 375
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lu/aly/av$g;->b:J

    .line 376
    iput-boolean v2, p0, Lu/aly/av$g;->c:Z

    return-void
.end method

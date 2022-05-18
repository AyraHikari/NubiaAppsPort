.class public final Lu/aly/av$f;
.super Ljava/lang/Object;
.source "UMEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field private static final d:J = -0x690b12375c4c387bL


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lu/aly/av$f;->a:I

    .line 160
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lu/aly/av$f;->b:J

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/av$f;->c:Ljava/lang/String;

    return-void
.end method

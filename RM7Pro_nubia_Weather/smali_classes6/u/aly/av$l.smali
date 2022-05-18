.class public final Lu/aly/av$l;
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
    name = "l"
.end annotation


# static fields
.field private static final e:J = 0x22c8f807fffa5ca5L


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/av$l;->a:Ljava/lang/String;

    .line 199
    iput-wide v2, p0, Lu/aly/av$l;->b:J

    .line 201
    iput-wide v2, p0, Lu/aly/av$l;->c:J

    .line 202
    iput-wide v2, p0, Lu/aly/av$l;->d:J

    return-void
.end method

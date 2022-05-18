.class public Lb/a/b/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:Z

.field public d:J

.field public e:J

.field public f:I

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lb/a/b/b/d;->c:Z

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lb/a/b/b/d;->a:J

    .line 4
    iput-wide v1, p0, Lb/a/b/b/d;->b:J

    .line 5
    iput-boolean v0, p0, Lb/a/b/b/d;->c:Z

    .line 6
    iput-wide v1, p0, Lb/a/b/b/d;->d:J

    .line 7
    iput-wide v1, p0, Lb/a/b/b/d;->e:J

    .line 8
    iput v0, p0, Lb/a/b/b/d;->f:I

    const-wide/16 v0, -0x1

    .line 9
    iput-wide v0, p0, Lb/a/b/b/d;->g:J

    return-void
.end method

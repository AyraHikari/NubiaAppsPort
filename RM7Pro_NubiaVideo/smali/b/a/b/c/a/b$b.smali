.class public Lb/a/b/c/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:[B

.field public b:I

.field public c:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-array p1, p1, [B

    iput-object p1, p0, Lb/a/b/c/a/b$b;->a:[B

    return-void
.end method

.method synthetic constructor <init>(ILb/a/b/c/a/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb/a/b/c/a/b$b;-><init>(I)V

    return-void
.end method

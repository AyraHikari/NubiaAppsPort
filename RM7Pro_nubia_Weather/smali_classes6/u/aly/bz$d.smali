.class Lu/aly/bz$d;
.super Ljava/lang/Object;
.source "TUnion.java"

# interfaces
.implements Lu/aly/cx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bz$1;)V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Lu/aly/bz$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/bz$c;
    .locals 2

    .prologue
    .line 256
    new-instance v0, Lu/aly/bz$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/bz$c;-><init>(Lu/aly/bz$1;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cw;
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0}, Lu/aly/bz$d;->a()Lu/aly/bz$c;

    move-result-object v0

    return-object v0
.end method

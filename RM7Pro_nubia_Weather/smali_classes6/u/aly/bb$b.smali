.class Lu/aly/bb$b;
.super Ljava/lang/Object;
.source "IdSnapshot.java"

# interfaces
.implements Lu/aly/cx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bb$1;)V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Lu/aly/bb$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/bb$a;
    .locals 2

    .prologue
    .line 327
    new-instance v0, Lu/aly/bb$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/bb$a;-><init>(Lu/aly/bb$1;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cw;
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lu/aly/bb$b;->a()Lu/aly/bb$a;

    move-result-object v0

    return-object v0
.end method

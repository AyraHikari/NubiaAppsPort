.class final Lu/aly/bh$a;
.super Ljava/lang/Object;
.source "AdvertisingId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lu/aly/bh$a;->a:Ljava/lang/String;

    .line 32
    iput-boolean p2, p0, Lu/aly/bh$a;->b:Z

    .line 33
    return-void
.end method

.method static synthetic a(Lu/aly/bh$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lu/aly/bh$a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lu/aly/bh$a;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lu/aly/bh$a;->b:Z

    return v0
.end method

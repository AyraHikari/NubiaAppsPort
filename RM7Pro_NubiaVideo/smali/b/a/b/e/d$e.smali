.class Lb/a/b/e/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/b/e/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/b/e/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lb/a/b/e/d$e;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lb/a/b/e/d$b;)V
    .locals 0

    return-void
.end method

.method public isCancelled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

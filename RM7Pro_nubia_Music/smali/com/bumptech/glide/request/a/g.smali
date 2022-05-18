.class public Lcom/bumptech/glide/request/a/g;
.super Ljava/lang/Object;
.source "NoAnimation.java"

# interfaces
.implements Lcom/bumptech/glide/request/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/a/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/a/e",
        "<TR;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/request/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/a/g",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:Lcom/bumptech/glide/request/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/a/f",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/bumptech/glide/request/a/g;

    invoke-direct {v0}, Lcom/bumptech/glide/request/a/g;-><init>()V

    sput-object v0, Lcom/bumptech/glide/request/a/g;->a:Lcom/bumptech/glide/request/a/g;

    .line 11
    new-instance v0, Lcom/bumptech/glide/request/a/g$a;

    invoke-direct {v0}, Lcom/bumptech/glide/request/a/g$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/request/a/g;->b:Lcom/bumptech/glide/request/a/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static a()Lcom/bumptech/glide/request/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/request/a/f",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 29
    sget-object v0, Lcom/bumptech/glide/request/a/g;->b:Lcom/bumptech/glide/request/a/f;

    return-object v0
.end method

.method public static b()Lcom/bumptech/glide/request/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/request/a/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 37
    sget-object v0, Lcom/bumptech/glide/request/a/g;->a:Lcom/bumptech/glide/request/a/g;

    return-object v0
.end method

.method static synthetic c()Lcom/bumptech/glide/request/a/g;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/bumptech/glide/request/a/g;->a:Lcom/bumptech/glide/request/a/g;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/bumptech/glide/request/a/e$a;)Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

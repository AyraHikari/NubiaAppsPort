.class public interface abstract Lcom/bumptech/glide/load/b/e;
.super Ljava/lang/Object;
.source "Headers.java"


# static fields
.field public static final a:Lcom/bumptech/glide/load/b/e;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lcom/bumptech/glide/load/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/bumptech/glide/load/b/e$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/e$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/b/e;->a:Lcom/bumptech/glide/load/b/e;

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/b/j$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/j$a;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/j$a;->a()Lcom/bumptech/glide/load/b/j;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/b/e;->b:Lcom/bumptech/glide/load/b/e;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

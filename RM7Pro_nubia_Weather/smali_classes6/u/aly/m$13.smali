.class Lu/aly/m$13;
.super Lu/aly/f;
.source "UMCCAggregatedManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/m;->a(JJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/aly/m;


# direct methods
.method constructor <init>(Lu/aly/m;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lu/aly/m$13;->a:Lu/aly/m;

    invoke-direct {p0}, Lu/aly/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 426
    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    :cond_0
    return-void
.end method

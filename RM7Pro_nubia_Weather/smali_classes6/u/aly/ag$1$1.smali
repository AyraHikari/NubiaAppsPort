.class Lu/aly/ag$1$1;
.super Lu/aly/f;
.source "EventTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/ag$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/aly/ag$1;


# direct methods
.method constructor <init>(Lu/aly/ag$1;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lu/aly/ag$1$1;->a:Lu/aly/ag$1;

    invoke-direct {p0}, Lu/aly/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 253
    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    :cond_0
    return-void
.end method

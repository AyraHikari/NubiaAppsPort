.class Lu/aly/m$8;
.super Lu/aly/f;
.source "UMCCAggregatedManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/m;->a(Lu/aly/f;Ljava/util/Map;)V
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
    .line 228
    iput-object p1, p0, Lu/aly/m$8;->a:Lu/aly/m;

    invoke-direct {p0}, Lu/aly/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lu/aly/m$8;->a:Lu/aly/m;

    check-cast p1, Lu/aly/h;

    invoke-static {v0, p1}, Lu/aly/m;->a(Lu/aly/m;Lu/aly/h;)Lu/aly/h;

    .line 234
    return-void
.end method

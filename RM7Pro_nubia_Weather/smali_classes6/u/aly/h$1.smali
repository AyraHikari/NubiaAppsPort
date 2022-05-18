.class Lu/aly/h$1;
.super Lu/aly/f;
.source "UMCCAggregatedListObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/h;->a(Lu/aly/f;Lu/aly/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/aly/f;

.field final synthetic b:Lu/aly/h;


# direct methods
.method constructor <init>(Lu/aly/h;Lu/aly/f;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lu/aly/h$1;->b:Lu/aly/h;

    iput-object p2, p0, Lu/aly/h$1;->a:Lu/aly/f;

    invoke-direct {p0}, Lu/aly/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 2

    .prologue
    .line 119
    check-cast p1, Lu/aly/i;

    .line 120
    iget-object v0, p0, Lu/aly/h$1;->b:Lu/aly/h;

    invoke-static {v0}, Lu/aly/h;->a(Lu/aly/h;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lu/aly/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lu/aly/h$1;->b:Lu/aly/h;

    invoke-static {v0}, Lu/aly/h;->a(Lu/aly/h;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lu/aly/i;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lu/aly/h$1;->a:Lu/aly/f;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lu/aly/f;->a(Ljava/lang/Object;Z)V

    .line 123
    return-void
.end method

.class Lcom/umeng/analytics/h$3;
.super Lorg/json/JSONObject;
.source "StoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/h;->b(Lu/aly/av;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/aly/av;

.field final synthetic b:Ljava/lang/StringBuilder;

.field final synthetic c:Lcom/umeng/analytics/h;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/h;Lu/aly/av;Ljava/lang/StringBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 457
    iput-object p1, p0, Lcom/umeng/analytics/h$3;->c:Lcom/umeng/analytics/h;

    iput-object p2, p0, Lcom/umeng/analytics/h$3;->a:Lu/aly/av;

    iput-object p3, p0, Lcom/umeng/analytics/h$3;->b:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 459
    iget-object v0, p0, Lcom/umeng/analytics/h$3;->c:Lcom/umeng/analytics/h;

    iget-object v1, p0, Lcom/umeng/analytics/h$3;->a:Lu/aly/av;

    iget-object v2, p0, Lcom/umeng/analytics/h$3;->b:Ljava/lang/StringBuilder;

    invoke-static {v0, v1, p0, v2}, Lcom/umeng/analytics/h;->b(Lcom/umeng/analytics/h;Lu/aly/av;Lorg/json/JSONObject;Ljava/lang/StringBuilder;)V

    .line 460
    return-void
.end method

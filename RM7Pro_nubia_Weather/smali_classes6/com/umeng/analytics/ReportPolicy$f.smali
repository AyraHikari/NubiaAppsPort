.class public Lcom/umeng/analytics/ReportPolicy$f;
.super Lcom/umeng/analytics/ReportPolicy$i;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field private final a:I

.field private b:Lu/aly/ak;


# direct methods
.method public constructor <init>(Lu/aly/ak;I)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/umeng/analytics/ReportPolicy$i;-><init>()V

    .line 224
    iput p2, p0, Lcom/umeng/analytics/ReportPolicy$f;->a:I

    .line 225
    iput-object p1, p0, Lcom/umeng/analytics/ReportPolicy$f;->b:Lu/aly/ak;

    .line 226
    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/umeng/analytics/ReportPolicy$f;->b:Lu/aly/ak;

    invoke-virtual {v0}, Lu/aly/ak;->b()I

    move-result v0

    iget v1, p0, Lcom/umeng/analytics/ReportPolicy$f;->a:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

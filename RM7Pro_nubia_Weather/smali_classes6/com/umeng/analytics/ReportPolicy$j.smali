.class public Lcom/umeng/analytics/ReportPolicy$j;
.super Lcom/umeng/analytics/ReportPolicy$i;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/ReportPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/umeng/analytics/ReportPolicy$i;-><init>()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/ReportPolicy$j;->a:Landroid/content/Context;

    .line 163
    iput-object p1, p0, Lcom/umeng/analytics/ReportPolicy$j;->a:Landroid/content/Context;

    .line 164
    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/umeng/analytics/ReportPolicy$j;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bj;->n(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

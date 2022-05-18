.class public Lcom/umeng/analytics/ReportPolicy;
.super Ljava/lang/Object;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/ReportPolicy$a;,
        Lcom/umeng/analytics/ReportPolicy$k;,
        Lcom/umeng/analytics/ReportPolicy$f;,
        Lcom/umeng/analytics/ReportPolicy$c;,
        Lcom/umeng/analytics/ReportPolicy$b;,
        Lcom/umeng/analytics/ReportPolicy$j;,
        Lcom/umeng/analytics/ReportPolicy$g;,
        Lcom/umeng/analytics/ReportPolicy$e;,
        Lcom/umeng/analytics/ReportPolicy$d;,
        Lcom/umeng/analytics/ReportPolicy$h;,
        Lcom/umeng/analytics/ReportPolicy$i;
    }
.end annotation


# static fields
.field public static final BATCH_AT_LAUNCH:I = 0x1

.field public static final BATCH_BY_INTERVAL:I = 0x6

.field public static final DAILY:I = 0x4

.field public static final REALTIME:I = 0x0

.field public static final SMART_POLICY:I = 0x8

.field public static final WIFIONLY:I = 0x5

.field static final a:I = 0x2

.field static final b:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    .line 50
    .line 51
    packed-switch p0, :pswitch_data_0

    .line 63
    :pswitch_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    .line 60
    :pswitch_1
    const/4 v0, 0x1

    .line 61
    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

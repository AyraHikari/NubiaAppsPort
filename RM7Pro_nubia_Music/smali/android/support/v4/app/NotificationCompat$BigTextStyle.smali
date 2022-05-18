.class public Landroid/support/v4/app/NotificationCompat$BigTextStyle;
.super Landroid/support/v4/app/NotificationCompat$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigTextStyle"
.end annotation


# instance fields
.field mBigText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2103
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V

    .line 2104
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 0

    .prologue
    .line 2106
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V

    .line 2107
    invoke-virtual {p0, p1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 2108
    return-void
.end method


# virtual methods
.method public bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    .locals 1

    .prologue
    .line 2133
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 2134
    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    .locals 1

    .prologue
    .line 2115
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 2116
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    .locals 1

    .prologue
    .line 2123
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    .line 2124
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->mSummaryTextSet:Z

    .line 2125
    return-object p0
.end method

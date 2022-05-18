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
.field private mBigText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1993
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V

    .line 1994
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 0
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 1996
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V

    .line 1997
    invoke-virtual {p0, p1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 1998
    return-void
.end method


# virtual methods
.method public apply(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 3
    .param p1, "builder"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2033
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 2034
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    .line 2035
    invoke-interface {p1}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 2036
    invoke-virtual {v1, v2}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 2037
    invoke-virtual {v1, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    .line 2038
    .local v0, "style":Landroid/app/Notification$BigTextStyle;
    iget-boolean v1, p0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->mSummaryTextSet:Z

    if-eqz v1, :cond_0

    .line 2039
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 2042
    .end local v0    # "style":Landroid/app/Notification$BigTextStyle;
    :cond_0
    return-void
.end method

.method public bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 2023
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 2024
    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 2005
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 2006
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 2013
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    .line 2014
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->mSummaryTextSet:Z

    .line 2015
    return-object p0
.end method

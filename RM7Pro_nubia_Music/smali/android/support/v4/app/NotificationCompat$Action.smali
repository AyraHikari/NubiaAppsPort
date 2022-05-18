.class public Landroid/support/v4/app/NotificationCompat$Action;
.super Landroid/support/v4/app/NotificationCompatBase$Action;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;,
        Landroid/support/v4/app/NotificationCompat$Action$Extender;,
        Landroid/support/v4/app/NotificationCompat$Action$Builder;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroid/support/v4/app/NotificationCompatBase$Action$Factory;


# instance fields
.field public actionIntent:Landroid/app/PendingIntent;

.field public icon:I

.field private mAllowGeneratedReplies:Z

.field private final mDataOnlyRemoteInputs:[Landroid/support/v4/app/RemoteInput;

.field final mExtras:Landroid/os/Bundle;

.field private final mRemoteInputs:[Landroid/support/v4/app/RemoteInput;

.field public title:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3057
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action$1;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$Action$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/NotificationCompat$Action;->FACTORY:Landroid/support/v4/app/NotificationCompatBase$Action$Factory;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 2597
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v5

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;[Landroid/support/v4/app/RemoteInput;Z)V

    .line 2598
    return-void
.end method

.method constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;[Landroid/support/v4/app/RemoteInput;Z)V
    .locals 1

    .prologue
    .line 2602
    invoke-direct {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;-><init>()V

    .line 2603
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Action;->icon:I

    .line 2604
    invoke-static {p2}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    .line 2605
    iput-object p3, p0, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 2606
    if-eqz p4, :cond_0

    :goto_0
    iput-object p4, p0, Landroid/support/v4/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    .line 2607
    iput-object p5, p0, Landroid/support/v4/app/NotificationCompat$Action;->mRemoteInputs:[Landroid/support/v4/app/RemoteInput;

    .line 2608
    iput-object p6, p0, Landroid/support/v4/app/NotificationCompat$Action;->mDataOnlyRemoteInputs:[Landroid/support/v4/app/RemoteInput;

    .line 2609
    iput-boolean p7, p0, Landroid/support/v4/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    .line 2610
    return-void

    .line 2606
    :cond_0
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public getActionIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 2624
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getAllowGeneratedReplies()Z
    .locals 1

    .prologue
    .line 2641
    iget-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    return v0
.end method

.method public getDataOnlyRemoteInputs()[Landroid/support/v4/app/RemoteInput;
    .locals 1

    .prologue
    .line 2666
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->mDataOnlyRemoteInputs:[Landroid/support/v4/app/RemoteInput;

    return-object v0
.end method

.method public bridge synthetic getDataOnlyRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    .locals 1

    .prologue
    .line 2564
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getDataOnlyRemoteInputs()[Landroid/support/v4/app/RemoteInput;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 2632
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 2614
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->icon:I

    return v0
.end method

.method public getRemoteInputs()[Landroid/support/v4/app/RemoteInput;
    .locals 1

    .prologue
    .line 2651
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->mRemoteInputs:[Landroid/support/v4/app/RemoteInput;

    return-object v0
.end method

.method public bridge synthetic getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    .locals 1

    .prologue
    .line 2564
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInput;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2619
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.class public final Landroid/support/v4/app/NotificationCompat$Action$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAllowGeneratedReplies:Z

.field private final mExtras:Landroid/os/Bundle;

.field private final mIcon:I

.field private final mIntent:Landroid/app/PendingIntent;

.field private mRemoteInputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/RemoteInput;",
            ">;"
        }
    .end annotation
.end field

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2687
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;Z)V

    .line 2688
    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;Z)V
    .locals 2
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "remoteInputs"    # [Landroid/support/v4/app/RemoteInput;
    .param p6, "allowGeneratedReplies"    # Z

    .prologue
    .line 2701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2676
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    .line 2702
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mIcon:I

    .line 2703
    invoke-static {p2}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 2704
    iput-object p3, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    .line 2705
    iput-object p4, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    .line 2706
    if-nez p5, :cond_0

    const/4 v0, 0x0

    .line 2707
    :goto_0
    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    .line 2708
    iput-boolean p6, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    .line 2709
    return-void

    .line 2706
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 2707
    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v4/app/NotificationCompat$Action;)V
    .locals 7
    .param p1, "action"    # Landroid/support/v4/app/NotificationCompat$Action;

    .prologue
    .line 2696
    iget v1, p1, Landroid/support/v4/app/NotificationCompat$Action;->icon:I

    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    new-instance v4, Landroid/os/Bundle;

    iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    invoke-direct {v4, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2697
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInput;

    move-result-object v5

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getAllowGeneratedReplies()Z

    move-result v6

    move-object v0, p0

    .line 2696
    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;Z)V

    .line 2698
    return-void
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Action$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2719
    if-eqz p1, :cond_0

    .line 2720
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2722
    :cond_0
    return-object p0
.end method

.method public addRemoteInput(Landroid/support/v4/app/RemoteInput;)Landroid/support/v4/app/NotificationCompat$Action$Builder;
    .locals 1
    .param p1, "remoteInput"    # Landroid/support/v4/app/RemoteInput;

    .prologue
    .line 2742
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2743
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    .line 2745
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2746
    return-object p0
.end method

.method public build()Landroid/support/v4/app/NotificationCompat$Action;
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 2778
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2779
    .local v8, "dataOnlyInputs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/RemoteInput;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2780
    .local v10, "textInputs":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/RemoteInput;>;"
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 2781
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mRemoteInputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/RemoteInput;

    .line 2782
    .local v9, "input":Landroid/support/v4/app/RemoteInput;
    invoke-virtual {v9}, Landroid/support/v4/app/RemoteInput;->isDataOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2783
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2785
    :cond_0
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2789
    .end local v9    # "input":Landroid/support/v4/app/RemoteInput;
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v6, v1

    .line 2791
    .local v6, "dataOnlyInputsArr":[Landroid/support/v4/app/RemoteInput;
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v5, v1

    .line 2793
    .local v5, "textInputsArr":[Landroid/support/v4/app/RemoteInput;
    :goto_2
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action;

    iget v1, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mIcon:I

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    iget-boolean v7, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;[Landroid/support/v4/app/RemoteInput;Z)V

    return-object v0

    .line 2790
    .end local v5    # "textInputsArr":[Landroid/support/v4/app/RemoteInput;
    .end local v6    # "dataOnlyInputsArr":[Landroid/support/v4/app/RemoteInput;
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/v4/app/RemoteInput;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/app/RemoteInput;

    move-object v6, v0

    goto :goto_1

    .line 2792
    .restart local v6    # "dataOnlyInputsArr":[Landroid/support/v4/app/RemoteInput;
    :cond_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/v4/app/RemoteInput;

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/app/RemoteInput;

    move-object v5, v0

    goto :goto_2
.end method

.method public extend(Landroid/support/v4/app/NotificationCompat$Action$Extender;)Landroid/support/v4/app/NotificationCompat$Action$Builder;
    .locals 0
    .param p1, "extender"    # Landroid/support/v4/app/NotificationCompat$Action$Extender;

    .prologue
    .line 2768
    invoke-interface {p1, p0}, Landroid/support/v4/app/NotificationCompat$Action$Extender;->extend(Landroid/support/v4/app/NotificationCompat$Action$Builder;)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    .line 2769
    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 2731
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public setAllowGeneratedReplies(Z)Landroid/support/v4/app/NotificationCompat$Action$Builder;
    .locals 0
    .param p1, "allowGeneratedReplies"    # Z

    .prologue
    .line 2759
    iput-boolean p1, p0, Landroid/support/v4/app/NotificationCompat$Action$Builder;->mAllowGeneratedReplies:Z

    .line 2760
    return-object p0
.end method

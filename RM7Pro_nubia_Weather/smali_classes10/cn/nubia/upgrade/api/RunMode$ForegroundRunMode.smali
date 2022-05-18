.class public Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;
.super Lcn/nubia/upgrade/api/RunMode;
.source "RunMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/api/RunMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForegroundRunMode"
.end annotation


# instance fields
.field private resIcon:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "resIcon"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Lcn/nubia/upgrade/api/RunMode;-><init>()V

    .line 41
    iput p1, p0, Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;->resIcon:I

    .line 42
    iput-object p2, p0, Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;->title:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getNotificationIcon()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;->resIcon:I

    return v0
.end method

.method public getNotificationTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;->title:Ljava/lang/String;

    return-object v0
.end method

.method public parcel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/nubia/upgrade/api/RunMode;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;->resIcon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcn/nubia/upgrade/api/RunMode;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/upgrade/api/RunMode$ForegroundRunMode;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

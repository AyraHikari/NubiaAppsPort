.class public Lcom/nubia/nucms/bean/NuCmsSportsItem;
.super Ljava/lang/Object;
.source "NuCmsSportsItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;
    }
.end annotation


# instance fields
.field private guest:Ljava/lang/String;

.field private guestImg:Ljava/lang/String;

.field private guestScore:I

.field private home:Ljava/lang/String;

.field private homeImg:Ljava/lang/String;

.field private homeScore:I

.field private id:I

.field private matchTime:Ljava/lang/String;

.field private matchType:Ljava/lang/String;

.field private other:Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetail()Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSportsItem;->other:Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;

    return-object v0
.end method

.method public getGuest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSportsItem;->guest:Ljava/lang/String;

    return-object v0
.end method

.method public getGuestImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSportsItem;->guestImg:Ljava/lang/String;

    return-object v0
.end method

.method public getGuestScore()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/nubia/nucms/bean/NuCmsSportsItem;->guestScore:I

    return v0
.end method

.method public getHome()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSportsItem;->home:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSportsItem;->homeImg:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeScore()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/nubia/nucms/bean/NuCmsSportsItem;->homeScore:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/nubia/nucms/bean/NuCmsSportsItem;->id:I

    return v0
.end method

.method public getMatchTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSportsItem;->matchTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSportsItem;->matchType:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsSportsItem;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public setDetail(Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;)V
    .locals 0
    .param p1, "other"    # Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsSportsItem;->other:Lcom/nubia/nucms/bean/NuCmsSportsItem$Detail;

    .line 94
    return-void
.end method

.method public setGuest(Ljava/lang/String;)V
    .locals 0
    .param p1, "guest"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsSportsItem;->guest:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setGuestImg(Ljava/lang/String;)V
    .locals 0
    .param p1, "guestImg"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsSportsItem;->guestImg:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setGuestScore(I)V
    .locals 0
    .param p1, "guestScore"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/nubia/nucms/bean/NuCmsSportsItem;->guestScore:I

    .line 90
    return-void
.end method

.method public setHome(Ljava/lang/String;)V
    .locals 0
    .param p1, "home"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsSportsItem;->home:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setHomeImg(Ljava/lang/String;)V
    .locals 0
    .param p1, "homeImg"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsSportsItem;->homeImg:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setHomeScore(I)V
    .locals 0
    .param p1, "homeScore"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/nubia/nucms/bean/NuCmsSportsItem;->homeScore:I

    .line 86
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/nubia/nucms/bean/NuCmsSportsItem;->id:I

    .line 58
    return-void
.end method

.method public setMatchTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "matchTime"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsSportsItem;->matchTime:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setMatchType(Ljava/lang/String;)V
    .locals 0
    .param p1, "matchType"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsSportsItem;->matchType:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsSportsItem;->tag:Ljava/lang/String;

    .line 62
    return-void
.end method

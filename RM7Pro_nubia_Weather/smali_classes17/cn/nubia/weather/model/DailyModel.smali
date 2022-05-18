.class public Lcn/nubia/weather/model/DailyModel;
.super Ljava/lang/Object;
.source "DailyModel.java"


# instance fields
.field mIcon:I

.field mLink:Ljava/lang/String;

.field mTemp:Ljava/lang/String;

.field mTime:Ljava/lang/String;

.field mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcn/nubia/weather/model/DailyModel;->mTime:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcn/nubia/weather/model/DailyModel;->mType:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcn/nubia/weather/model/DailyModel;->mTemp:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcn/nubia/weather/model/DailyModel;->mLink:Ljava/lang/String;

    .line 8
    iput v1, p0, Lcn/nubia/weather/model/DailyModel;->mIcon:I

    .line 48
    iput-object p1, p0, Lcn/nubia/weather/model/DailyModel;->mTime:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcn/nubia/weather/model/DailyModel;->mType:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcn/nubia/weather/model/DailyModel;->mTemp:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcn/nubia/weather/model/DailyModel;->mLink:Ljava/lang/String;

    .line 52
    iput v1, p0, Lcn/nubia/weather/model/DailyModel;->mIcon:I

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "time"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "temp"    # Ljava/lang/String;
    .param p4, "link"    # Ljava/lang/String;
    .param p5, "icon"    # I

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcn/nubia/weather/model/DailyModel;->mTime:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcn/nubia/weather/model/DailyModel;->mType:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcn/nubia/weather/model/DailyModel;->mTemp:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcn/nubia/weather/model/DailyModel;->mLink:Ljava/lang/String;

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/weather/model/DailyModel;->mIcon:I

    .line 40
    iput-object p1, p0, Lcn/nubia/weather/model/DailyModel;->mTime:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcn/nubia/weather/model/DailyModel;->mType:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcn/nubia/weather/model/DailyModel;->mTemp:Ljava/lang/String;

    .line 43
    iput p5, p0, Lcn/nubia/weather/model/DailyModel;->mIcon:I

    .line 44
    iput-object p4, p0, Lcn/nubia/weather/model/DailyModel;->mLink:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getmIcon()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcn/nubia/weather/model/DailyModel;->mIcon:I

    return v0
.end method

.method public getmLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/weather/model/DailyModel;->mLink:Ljava/lang/String;

    return-object v0
.end method

.method public getmTemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/weather/model/DailyModel;->mTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getmTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/weather/model/DailyModel;->mTime:Ljava/lang/String;

    return-object v0
.end method

.method public getmType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcn/nubia/weather/model/DailyModel;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public setmIcon(I)V
    .locals 0
    .param p1, "icon"    # I

    .prologue
    .line 13
    iput p1, p0, Lcn/nubia/weather/model/DailyModel;->mIcon:I

    .line 14
    return-void
.end method

.method public setmLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcn/nubia/weather/model/DailyModel;->mLink:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setmTemp(Ljava/lang/String;)V
    .locals 0
    .param p1, "temp"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcn/nubia/weather/model/DailyModel;->mTemp:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setmTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcn/nubia/weather/model/DailyModel;->mTime:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setmType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcn/nubia/weather/model/DailyModel;->mType:Ljava/lang/String;

    .line 32
    return-void
.end method

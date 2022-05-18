.class Lcom/bluestareffects/app/weather/common/GroupStars$ValueForTimeProperty;
.super Lcom/bluestareffects/sdk/materials/algorithm/Property;
.source "GroupStars.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluestareffects/app/weather/common/GroupStars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValueForTimeProperty"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bluestareffects/app/weather/common/GroupStars;


# direct methods
.method constructor <init>(Lcom/bluestareffects/app/weather/common/GroupStars;I)V
    .locals 0
    .param p2, "dimension"    # I

    .prologue
    .line 148
    iput-object p1, p0, Lcom/bluestareffects/app/weather/common/GroupStars$ValueForTimeProperty;->this$0:Lcom/bluestareffects/app/weather/common/GroupStars;

    .line 149
    invoke-direct {p0, p2}, Lcom/bluestareffects/sdk/materials/algorithm/Property;-><init>(I)V

    .line 150
    return-void
.end method


# virtual methods
.method public onResult([FF)V
    .locals 3
    .param p1, "value"    # [F
    .param p2, "time"    # F

    .prologue
    .line 154
    invoke-super {p0, p1, p2}, Lcom/bluestareffects/sdk/materials/algorithm/Property;->onResult([FF)V

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/GroupStars$ValueForTimeProperty;->mValue:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/bluestareffects/app/weather/common/GroupStars$ValueForTimeProperty;->mValue:[F

    aget v2, v1, v0

    add-float/2addr v2, p2

    aput v2, v1, v0

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method

.method public onTime(F)V
    .locals 1
    .param p1, "timePassed"    # F

    .prologue
    .line 162
    iget-object v0, p0, Lcom/bluestareffects/app/weather/common/GroupStars$ValueForTimeProperty;->mValue:[F

    invoke-virtual {p0, v0, p1}, Lcom/bluestareffects/app/weather/common/GroupStars$ValueForTimeProperty;->onResult([FF)V

    .line 163
    return-void
.end method

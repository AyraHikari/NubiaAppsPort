.class Lcom/bluestareffects/app/weather/common/GroupStars$AlphaForTimeProperty;
.super Lcom/bluestareffects/sdk/materials/algorithm/Property;
.source "GroupStars.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluestareffects/app/weather/common/GroupStars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlphaForTimeProperty"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bluestareffects/app/weather/common/GroupStars;


# direct methods
.method constructor <init>(Lcom/bluestareffects/app/weather/common/GroupStars;I)V
    .locals 0
    .param p2, "dimension"    # I

    .prologue
    .line 167
    iput-object p1, p0, Lcom/bluestareffects/app/weather/common/GroupStars$AlphaForTimeProperty;->this$0:Lcom/bluestareffects/app/weather/common/GroupStars;

    .line 168
    invoke-direct {p0, p2}, Lcom/bluestareffects/sdk/materials/algorithm/Property;-><init>(I)V

    .line 169
    return-void
.end method


# virtual methods
.method public onResult([FF)V
    .locals 7
    .param p1, "value"    # [F
    .param p2, "time"    # F

    .prologue
    const v6, 0x453b8000    # 3000.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x44bb8000    # 1500.0f

    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 174
    aget v2, p1, v0

    const v3, 0x45bb8000    # 6000.0f

    rem-float v1, v2, v3

    .line 185
    .local v1, "t":F
    cmpg-float v2, v4, v1

    if-gtz v2, :cond_0

    cmpg-float v2, v1, v6

    if-gtz v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/GroupStars$AlphaForTimeProperty;->mValue:[F

    sub-float v3, v1, v4

    div-float/2addr v3, v4

    sub-float v3, v5, v3

    aput v3, v2, v0

    .line 173
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_0
    const v2, 0x458ca000    # 4500.0f

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_1

    cmpl-float v2, v1, v6

    if-ltz v2, :cond_1

    .line 188
    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/GroupStars$AlphaForTimeProperty;->mValue:[F

    sub-float v3, v1, v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v4

    aput v3, v2, v0

    goto :goto_1

    .line 190
    :cond_1
    iget-object v2, p0, Lcom/bluestareffects/app/weather/common/GroupStars$AlphaForTimeProperty;->mValue:[F

    aput v5, v2, v0

    goto :goto_1

    .line 193
    .end local v1    # "t":F
    :cond_2
    return-void
.end method

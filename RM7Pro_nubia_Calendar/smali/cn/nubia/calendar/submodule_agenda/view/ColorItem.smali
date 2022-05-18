.class public Lcn/nubia/calendar/submodule_agenda/view/ColorItem;
.super Ljava/lang/Object;
.source "ColorItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mBackColor:Ljava/lang/String;

.field private mLongPressBackColor:Ljava/lang/String;

.field private mLongPressBorderColor:Ljava/lang/String;

.field private mPosition:I

.field private mSignColor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->mPosition:I

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->mSignColor:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->mBackColor:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->mLongPressBackColor:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->mLongPressBorderColor:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "signColor"    # Ljava/lang/String;
    .param p3, "backColor"    # Ljava/lang/String;
    .param p4, "longPressBackColor"    # Ljava/lang/String;
    .param p5, "longPressBorderColor"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->mPosition:I

    .line 60
    iput-object p2, p0, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->mSignColor:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->mBackColor:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->mLongPressBackColor:Ljava/lang/String;

    .line 63
    iput-object p5, p0, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->mLongPressBorderColor:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 111
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 112
    const/4 v1, 0x1

    .line 119
    :cond_0
    :goto_0
    return v1

    .line 113
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_0

    :cond_2
    if-nez p0, :cond_3

    if-nez p1, :cond_0

    .line 115
    :cond_3
    instance-of v2, p1, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 116
    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;

    .line 117
    .local v0, "other":Lcn/nubia/calendar/submodule_agenda/view/ColorItem;
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->getSignColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->getSignColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getBackColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->mBackColor:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->mBackColor:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLongPressBackColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->mLongPressBackColor:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->mLongPressBackColor:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLongPressBorderColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->mLongPressBorderColor:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->mLongPressBorderColor:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->mPosition:I

    return v0
.end method

.method public getSignColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->mSignColor:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->mSignColor:Ljava/lang/String;

    goto :goto_0
.end method

.method public setBackColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "backColor"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->mBackColor:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setLongPressBackColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "longPressBackColor"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->mLongPressBackColor:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setLongPressBorderColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "longPressBorderColor"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->mLongPressBorderColor:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 87
    iput p1, p0, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->mPosition:I

    .line 88
    return-void
.end method

.method public setSignColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "signColor"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/ColorItem;->mSignColor:Ljava/lang/String;

    .line 92
    return-void
.end method

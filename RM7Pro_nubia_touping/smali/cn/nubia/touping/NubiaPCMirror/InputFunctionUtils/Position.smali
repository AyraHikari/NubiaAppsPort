.class public Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;
.super Ljava/lang/Object;
.source "Position.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Position"


# instance fields
.field private point:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

.field private screenSize:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;


# direct methods
.method public constructor <init>(IIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "screenWidth"    # I
    .param p4, "screenHeight"    # I

    .prologue
    .line 21
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

    invoke-direct {v0, p1, p2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;-><init>(II)V

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    invoke-direct {v1, p3, p4}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;-><init>(II)V

    invoke-direct {p0, v0, v1}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;-><init>(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;)V

    .line 22
    const-string v0, "Position12334"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Position(1)  clientVideoSize.toString() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->screenSize:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    invoke-virtual {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;)V
    .locals 3
    .param p1, "point"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;
    .param p2, "screenSize"    # Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->point:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

    .line 16
    iput-object p2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->screenSize:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    .line 17
    const-string v0, "Position12334"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Position(1)  clientVideoSize.toString() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/touping/Utils/LogShow;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    if-ne p0, p1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v1

    .line 51
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 52
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 54
    check-cast v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;

    .line 55
    .local v0, "position":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;
    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->point:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

    iget-object v4, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->point:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->screenSize:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    iget-object v4, v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->screenSize:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getPoint()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->point:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

    return-object v0
.end method

.method public getScreenSize()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->screenSize:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->point:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->screenSize:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public rotate(I)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;
    .locals 5
    .param p1, "rotation"    # I

    .prologue
    .line 34
    packed-switch p1, :pswitch_data_0

    .line 42
    .end local p0    # "this":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;
    :goto_0
    return-object p0

    .line 36
    .restart local p0    # "this":Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;
    :pswitch_0
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->screenSize:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    invoke-virtual {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->point:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

    invoke-virtual {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->getY()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->point:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

    invoke-virtual {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->getX()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;-><init>(II)V

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->screenSize:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    invoke-virtual {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->rotate()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;-><init>(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;)V

    move-object p0, v0

    goto :goto_0

    .line 38
    :pswitch_1
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->screenSize:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    invoke-virtual {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->point:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

    invoke-virtual {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->getX()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->screenSize:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    invoke-virtual {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->point:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

    invoke-virtual {v4}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->getY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;-><init>(II)V

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->screenSize:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    invoke-direct {v0, v1, v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;-><init>(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;)V

    move-object p0, v0

    goto :goto_0

    .line 40
    :pswitch_2
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->point:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

    invoke-virtual {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->getY()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->screenSize:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    invoke-virtual {v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->point:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

    invoke-virtual {v4}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;->getX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;-><init>(II)V

    iget-object v2, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->screenSize:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    invoke-virtual {v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;->rotate()Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;-><init>(Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;)V

    move-object p0, v0

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Position{point="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->point:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Position;->screenSize:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

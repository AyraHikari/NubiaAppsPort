.class final enum Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;
.super Ljava/lang/Enum;
.source "ScrollableLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/ui/scrolllayout/ScrollableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DIRECTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;

.field public static final enum b:Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;

.field private static final synthetic c:[Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;

    const-string v1, "UP"

    invoke-direct {v0, v1, v2}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;->a:Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;

    .line 58
    new-instance v0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v3}, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;->b:Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;

    sget-object v1, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;->a:Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;->b:Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;

    aput-object v1, v0, v3

    sput-object v0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;->c:[Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;

    return-object v0
.end method

.method public static values()[Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;->c:[Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;

    invoke-virtual {v0}, [Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/music/ui/scrolllayout/ScrollableLayout$DIRECTION;

    return-object v0
.end method

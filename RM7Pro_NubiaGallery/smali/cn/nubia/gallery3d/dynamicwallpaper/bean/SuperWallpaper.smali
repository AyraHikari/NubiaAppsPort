.class public final enum Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;
.super Ljava/lang/Enum;
.source "SuperWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

.field public static final enum earth:Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

.field public static final enum none:Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

.field public static final enum river:Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 8
    new-instance v0, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    const-string v1, "none"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;->none:Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    .line 9
    new-instance v1, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    const-string v3, "river"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;->river:Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    .line 10
    new-instance v3, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    const-string v5, "earth"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;->earth:Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 7
    sput-object v5, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;->$VALUES:[Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;
    .locals 1

    .line 7
    const-class v0, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    return-object p0
.end method

.method public static values()[Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;
    .locals 1

    .line 7
    sget-object v0, Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;->$VALUES:[Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    invoke-virtual {v0}, [Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/gallery3d/dynamicwallpaper/bean/SuperWallpaper;

    return-object v0
.end method

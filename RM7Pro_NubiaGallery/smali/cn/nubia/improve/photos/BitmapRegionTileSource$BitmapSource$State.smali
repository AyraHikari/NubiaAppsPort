.class public final enum Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;
.super Ljava/lang/Enum;
.source "BitmapRegionTileSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;

.field public static final enum ERROR_LOADING:Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;

.field public static final enum LOADED:Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;

.field public static final enum NOT_LOADED:Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 165
    new-instance v0, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;

    const-string v1, "NOT_LOADED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;->NOT_LOADED:Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;

    new-instance v1, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;

    const-string v3, "LOADED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;->LOADED:Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;

    new-instance v3, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;

    const-string v5, "ERROR_LOADING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;->ERROR_LOADING:Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;->$VALUES:[Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;
    .locals 1

    .line 165
    const-class v0, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;

    return-object p0
.end method

.method public static values()[Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;
    .locals 1

    .line 165
    sget-object v0, Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;->$VALUES:[Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;

    invoke-virtual {v0}, [Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/improve/photos/BitmapRegionTileSource$BitmapSource$State;

    return-object v0
.end method

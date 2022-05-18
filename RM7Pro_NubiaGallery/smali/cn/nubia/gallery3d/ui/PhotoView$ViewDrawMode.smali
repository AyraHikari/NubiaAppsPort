.class public final enum Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;
.super Ljava/lang/Enum;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewDrawMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

.field public static final enum VSM_DrawNone:Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

.field public static final enum VSM_DrawPicture:Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

.field public static final enum VSM_DrawVideo:Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 419
    new-instance v0, Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

    const-string v1, "VSM_DrawPicture"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;->VSM_DrawPicture:Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

    new-instance v1, Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

    const-string v3, "VSM_DrawVideo"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;->VSM_DrawVideo:Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

    new-instance v3, Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

    const-string v5, "VSM_DrawNone"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;->VSM_DrawNone:Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 418
    sput-object v5, Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;->$VALUES:[Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 418
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;
    .locals 1

    .line 418
    const-class v0, Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

    return-object p0
.end method

.method public static values()[Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;
    .locals 1

    .line 418
    sget-object v0, Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;->$VALUES:[Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

    invoke-virtual {v0}, [Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/gallery3d/ui/PhotoView$ViewDrawMode;

    return-object v0
.end method

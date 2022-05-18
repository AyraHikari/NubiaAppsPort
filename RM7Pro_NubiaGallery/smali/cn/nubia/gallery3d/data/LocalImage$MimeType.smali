.class final enum Lcn/nubia/gallery3d/data/LocalImage$MimeType;
.super Ljava/lang/Enum;
.source "LocalImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/LocalImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MimeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/gallery3d/data/LocalImage$MimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/gallery3d/data/LocalImage$MimeType;

.field public static final enum BMP:Lcn/nubia/gallery3d/data/LocalImage$MimeType;

.field public static final enum DEFAULT:Lcn/nubia/gallery3d/data/LocalImage$MimeType;

.field public static final enum DNG:Lcn/nubia/gallery3d/data/LocalImage$MimeType;

.field public static final enum GIF:Lcn/nubia/gallery3d/data/LocalImage$MimeType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 83
    new-instance v0, Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/data/LocalImage$MimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/gallery3d/data/LocalImage$MimeType;->DEFAULT:Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    new-instance v1, Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    const-string v3, "BMP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/nubia/gallery3d/data/LocalImage$MimeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/nubia/gallery3d/data/LocalImage$MimeType;->BMP:Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    new-instance v3, Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    const-string v5, "GIF"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/nubia/gallery3d/data/LocalImage$MimeType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/nubia/gallery3d/data/LocalImage$MimeType;->GIF:Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    new-instance v5, Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    const-string v7, "DNG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/nubia/gallery3d/data/LocalImage$MimeType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/nubia/gallery3d/data/LocalImage$MimeType;->DNG:Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcn/nubia/gallery3d/data/LocalImage$MimeType;->$VALUES:[Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/gallery3d/data/LocalImage$MimeType;
    .locals 1

    .line 83
    const-class v0, Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    return-object p0
.end method

.method public static values()[Lcn/nubia/gallery3d/data/LocalImage$MimeType;
    .locals 1

    .line 83
    sget-object v0, Lcn/nubia/gallery3d/data/LocalImage$MimeType;->$VALUES:[Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    invoke-virtual {v0}, [Lcn/nubia/gallery3d/data/LocalImage$MimeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/gallery3d/data/LocalImage$MimeType;

    return-object v0
.end method

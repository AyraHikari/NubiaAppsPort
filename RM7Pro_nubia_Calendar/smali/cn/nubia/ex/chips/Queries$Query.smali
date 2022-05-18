.class abstract Lcn/nubia/ex/chips/Queries$Query;
.super Ljava/lang/Object;
.source "Queries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/ex/chips/Queries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Query"
.end annotation


# static fields
.field public static final CONTACT_ID:I = 0x4

.field public static final DATA_ID:I = 0x5

.field public static final DESTINATION:I = 0x1

.field public static final DESTINATION_LABEL:I = 0x3

.field public static final DESTINATION_TYPE:I = 0x2

.field public static final DISPLAY_NAME_SOURCE:I = 0x7

.field public static final NAME:I = 0x0

.field public static final PHOTO_THUMBNAIL_URI:I = 0x6


# instance fields
.field private final mContentFilterUri:Landroid/net/Uri;

.field private final mContentUri:Landroid/net/Uri;

.field private final mProjection:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "contentFilter"    # Landroid/net/Uri;
    .param p3, "content"    # Landroid/net/Uri;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcn/nubia/ex/chips/Queries$Query;->mProjection:[Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcn/nubia/ex/chips/Queries$Query;->mContentFilterUri:Landroid/net/Uri;

    .line 83
    iput-object p3, p0, Lcn/nubia/ex/chips/Queries$Query;->mContentUri:Landroid/net/Uri;

    .line 84
    return-void
.end method


# virtual methods
.method public getContentFilterUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcn/nubia/ex/chips/Queries$Query;->mContentFilterUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcn/nubia/ex/chips/Queries$Query;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcn/nubia/ex/chips/Queries$Query;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public abstract getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
.end method

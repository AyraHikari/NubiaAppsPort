.class Lcn/nubia/video/list/ui/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/list/ui/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Lcn/nubia/video/list/ui/g;


# direct methods
.method public constructor <init>(Lcn/nubia/video/list/ui/g;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/list/ui/g$b;->b:Lcn/nubia/video/list/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcn/nubia/video/list/ui/g$b;->a:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/list/ui/g$b;->b:Lcn/nubia/video/list/ui/g;

    iget p2, p0, Lcn/nubia/video/list/ui/g$b;->a:I

    invoke-virtual {p1, p2}, Lcn/nubia/video/list/ui/g;->e0(I)V

    return-void
.end method

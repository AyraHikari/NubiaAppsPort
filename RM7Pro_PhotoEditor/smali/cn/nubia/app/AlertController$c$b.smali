.class Lcn/nubia/app/AlertController$c$b;
.super Landroid/widget/CursorAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/app/AlertController$c;->b(Lcn/nubia/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field final synthetic c:Lcn/nubia/app/AlertController$RecycleListView;

.field final synthetic d:Lcn/nubia/app/AlertController;

.field final synthetic e:Lcn/nubia/app/AlertController$c;


# direct methods
.method constructor <init>(Lcn/nubia/app/AlertController$c;Landroid/content/Context;Landroid/database/Cursor;ZLcn/nubia/app/AlertController$RecycleListView;Lcn/nubia/app/AlertController;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/app/AlertController$c$b;->e:Lcn/nubia/app/AlertController$c;

    iput-object p5, p0, Lcn/nubia/app/AlertController$c$b;->c:Lcn/nubia/app/AlertController$RecycleListView;

    iput-object p6, p0, Lcn/nubia/app/AlertController$c$b;->d:Lcn/nubia/app/AlertController;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p2

    iget-object p3, p1, Lcn/nubia/app/AlertController$c;->I:Ljava/lang/String;

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcn/nubia/app/AlertController$c$b;->a:I

    iget-object p1, p1, Lcn/nubia/app/AlertController$c;->J:Ljava/lang/String;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/app/AlertController$c$b;->b:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1

    const p2, 0x7f08025f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    iget p2, p0, Lcn/nubia/app/AlertController$c$b;->a:I

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcn/nubia/app/AlertController$c$b;->c:Lcn/nubia/app/AlertController$RecycleListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result p2

    iget v0, p0, Lcn/nubia/app/AlertController$c$b;->b:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, p2, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object p1, p0, Lcn/nubia/app/AlertController$c$b;->e:Lcn/nubia/app/AlertController$c;

    iget-object p1, p1, Lcn/nubia/app/AlertController$c;->b:Landroid/view/LayoutInflater;

    iget-object p2, p0, Lcn/nubia/app/AlertController$c$b;->d:Lcn/nubia/app/AlertController;

    invoke-static {p2}, Lcn/nubia/app/AlertController;->e(Lcn/nubia/app/AlertController;)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

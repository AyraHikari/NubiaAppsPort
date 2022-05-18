.class Lcn/nubia/commonui/actionbar/internal/app/NavItemSelectedListener;
.super Ljava/lang/Object;
.source "NavItemSelectedListener.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemSelectedListener;


# instance fields
.field private final mListener:Lcn/nubia/commonui/actionbar/app/ActionBar$OnNavigationListener;


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/actionbar/app/ActionBar$OnNavigationListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/commonui/actionbar/app/ActionBar$OnNavigationListener;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/app/NavItemSelectedListener;->mListener:Lcn/nubia/commonui/actionbar/app/ActionBar$OnNavigationListener;

    .line 35
    return-void
.end method


# virtual methods
.method public onItemSelected(Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "parent":Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;, "Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat<*>;"
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/NavItemSelectedListener;->mListener:Lcn/nubia/commonui/actionbar/app/ActionBar$OnNavigationListener;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/app/NavItemSelectedListener;->mListener:Lcn/nubia/commonui/actionbar/app/ActionBar$OnNavigationListener;

    invoke-interface {v0, p3, p4, p5}, Lcn/nubia/commonui/actionbar/app/ActionBar$OnNavigationListener;->onNavigationItemSelected(IJ)Z

    .line 42
    :cond_0
    return-void
.end method

.method public onNothingSelected(Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "parent":Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat;, "Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat<*>;"
    return-void
.end method

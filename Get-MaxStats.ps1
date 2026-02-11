function Get-MaxStats {
    [CmdletBinding()]
    param(
        [string]$class
        ,[string]$attribute
        ,[System.Object]$csv_object
    )    
    
    $max_class_stat = @{}
    
    $csv_object | Where {$_."$class" -eq "x"} | ForEach-Object {if($max_class_stat[$_."Slot"] -eq $null -or $max_class_stat[$_."Slot"].attr -lt $_."$attribute"){
            $max_class_stat[$_."Slot"] = @{name=$_."Name"; attr=$_."$attribute"}
        }
    }
    
    return $max_class_stat.keys | ForEach-Object { "$class,$_,$($max_class_stat[$_].name),$($max_class_stat[$_].attr)"}